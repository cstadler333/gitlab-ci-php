#!/usr/bin/env bash

set -euo pipefail

apk --update --no-cache add \
    bzip2 \
    bzip2-dev \
    curl-dev \
    cyrus-sasl-dev \
    freetype-dev \
    gmp-dev \
    icu-dev \
    imagemagick \
    imagemagick-dev \
    imap-dev \
    krb5-dev \
    libbz2 \
    libedit-dev \
    libintl \
    libjpeg-turbo-dev \
    libltdl \
    libmemcached-dev \
    libpng-dev \
    libtool \
    libxml2-dev \
    libxslt-dev \
    openldap-dev \
    pcre-dev \
    postgresql-dev \
    rabbitmq-c \
    rabbitmq-c-dev \
    readline-dev \
    sqlite-dev \
    zlib-dev

apk --update --no-cache add libzip-dev libsodium-dev

docker-php-ext-configure ldap
docker-php-ext-install -j "$(nproc)" ldap
PHP_OPENSSL=yes docker-php-ext-configure imap --with-kerberos --with-imap-ssl
docker-php-ext-install -j "$(nproc)" imap

if ! [[ $PHP_VERSION == "7.4" ]]; then
    docker-php-ext-install -j "$(nproc)" exif pcntl bcmath bz2 calendar intl mysqli opcache pdo_mysql pdo_pgsql pgsql soap xsl zip gmp
else
    docker-php-ext-install -j "$(nproc)" exif xmlrpc pcntl bcmath bz2 calendar intl mysqli opcache pdo_mysql pdo_pgsql pgsql soap xsl zip gmp
fi

docker-php-source delete

docker-php-ext-configure gd --with-freetype --with-jpeg
docker-php-ext-install -j "$(nproc)" gd

if ! [[ $PHP_VERSION == "8.2" ]]; then
    pecl install amqp imagick memcached \
        && docker-php-ext-enable amqp imagick memcached
else
    #AMQP
    docker-php-source extract \
        && mkdir /usr/src/php/ext/amqp \
        && curl -L https://github.com/php-amqp/php-amqp/archive/master.tar.gz | tar -xzC /usr/src/php/ext/amqp --strip-components=1 \
        && docker-php-ext-install amqp \
        && docker-php-source delete

    #Imagick
    mkdir /usr/local/src \
        && cd /usr/local/src \
        && git clone https://github.com/Imagick/imagick \
        && cd imagick \
        && phpize \
        && ./configure \
        && make \
        && make install \
        && cd .. \
        && rm -rf imagick \
        && docker-php-ext-enable imagick

    #Memcached
    git clone "https://github.com/php-memcached-dev/php-memcached.git" \
        && cd php-memcached \
        && phpize \
        && ./configure --disable-memcached-sasl \
        && make \
        && make install \
        && cd ../ && rm -rf php-memcached \
        && docker-php-ext-enable memcached
fi

pecl install apcu mongodb redis xdebug \
    && docker-php-ext-enable apcu mongodb redis xdebug

{ \
    echo 'opcache.enable=1'; \
    echo 'opcache.revalidate_freq=0'; \
    echo 'opcache.validate_timestamps=1'; \
    echo 'opcache.max_accelerated_files=10000'; \
    echo 'opcache.memory_consumption=192'; \
    echo 'opcache.max_wasted_percentage=10'; \
    echo 'opcache.interned_strings_buffer=16'; \
    echo 'opcache.fast_shutdown=1'; \
} > /usr/local/etc/php/conf.d/opcache-recommended.ini

{ \
    echo 'apc.shm_segments=1'; \
    echo 'apc.shm_size=512M'; \
    echo 'apc.num_files_hint=7000'; \
    echo 'apc.user_entries_hint=4096'; \
    echo 'apc.ttl=7200'; \
    echo 'apc.user_ttl=7200'; \
    echo 'apc.gc_ttl=3600'; \
    echo 'apc.max_file_size=50M'; \
    echo 'apc.stat=1'; \
} > /usr/local/etc/php/conf.d/apcu-recommended.ini

echo "memory_limit=1G" > /usr/local/etc/php/conf.d/zz-conf.ini

echo 'xdebug.mode=coverage' > /usr/local/etc/php/conf.d/20-xdebug.ini
