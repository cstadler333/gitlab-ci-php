FROM php:8.0-alpine

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Christopher Stadler <cstadler@smthdiff.com>" \
    PHP="8.0" \
    NODE="16" \
    org.label-schema.name="cstadler333/gitlab-ci-php" \
    org.label-schema.description="Docker image for build and test PHP applications with Gitlab CI" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.schema-version="1.0" \
    org.label-schema.vcs-url="https://github.com/cstadler333/gitlab-ci-php" \
    org.label-schema.vcs-ref=$VCS_REF

# Set correct environment variables
ENV IMAGE_USER=php
ENV HOME=/home/$IMAGE_USER
ENV COMPOSER_HOME=$HOME/.composer
ENV PATH=$HOME/.yarn/bin:$PATH
ENV GOSS_VERSION="0.4.8"
ENV NODE_VERSION=16
ENV NPM_VERSION=8
ENV YARN_VERSION=latest
ENV PHP_VERSION=8.0

WORKDIR /tmp

COPY ./php/scripts/alpine/*.sh /tmp/
COPY --from=composer/composer:2-bin /composer /usr/bin/composer
COPY --from=node:16-alpine /usr/local/bin/node /usr/local/bin/
COPY --from=node:16-alpine /usr/local/lib/* /usr/local/lib/
COPY --from=node:16-alpine /usr/lib/libgcc* /usr/lib/libstdc* /usr/lib/* /usr/lib/

# COPY INSTALL SCRIPTS
RUN chmod +x /tmp/*.sh \
    && adduser -D $IMAGE_USER \
    && mkdir -p /var/www/html \
    && apk add --update --no-cache bash \
    && bash ./packages.sh \
    && bash ./extensions.sh \
    && bash ./nodeyarn.sh \
    && rm -rf ~/.composer/cache/* \
    && chown -R $IMAGE_USER:$IMAGE_USER /var/www $HOME \
    && echo "$IMAGE_USER  ALL = ( ALL ) NOPASSWD: ALL" >> /etc/sudoers \
    && curl -fsSL https://goss.rocks/install | GOSS_VER=v${GOSS_VERSION} sh \
    && bash ./cleanup.sh

USER $IMAGE_USER
WORKDIR /var/www/html
CMD ["php", "-a"]
