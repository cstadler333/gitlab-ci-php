# Build and test PHP applications with Gitlab CI

> Docker images with everything you'll need to build and test PHP applications.

![Logo](https://raw.githubusercontent.com/cstadler333/gitlab-ci-php/master/gitlab-ci-php.png)

---

![GitHub last commit](https://img.shields.io/github/last-commit/cstadler333/gitlab-ci-php.svg?style=for-the-badge&logo=git)

[![Docker Pulls](https://img.shields.io/docker/pulls/cstadler333/gitlab-ci-php.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/)

---

## Based on [Official PHP images](https://hub.docker.com/_/php/) and [edbizarro's Images](https://github.com/edbizarro/gitlab-ci-pipeline-php)

> CURRENTLY ONLY ALPINE IMAGES!

- `7.4-node14-alpine` [(php7/node14/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php7/node14/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/7.4-node14-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=7.4-node14-alpine)
- `7.4-node16-alpine` [(php7/node16/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php7/node16/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/7.4-node16-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=7.4-node16-alpine)
- `7.4-node18-alpine` [(php7/node18/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php7/node18/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/7.4-node18-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=7.4-node18-alpine)
- `8.0-node16-alpine` [(php/node16/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node16/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.0-node16-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.0-node16-alpine)
- `8.0-node18-alpine` [(php/node18/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node18/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.0-node18-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.0-node18-alpine)
- `8.0-node20-alpine` [(php/node20/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node20/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.0-node20-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.0-node20-alpine)
- `8.1-node16-alpine` [(php/node16/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node16/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.1-node16-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.1-node16-alpine)
- `8.1-node18-alpine` [(php/node18/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node18/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.1-node18-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.1-node18-alpine)
- `8.1-node20-alpine` [(php/node20/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node20/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.1-node20-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.1-node20-alpine)
- `8.2-node16-alpine` [(php/node16/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node16/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.2-node16-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.2-node16-alpine)
- `8.2-node18-alpine` [(php/node18/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node18/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.2-node18-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.2-node18-alpine)
- `8.2-node20-alpine` [(php/node20/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node20/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.2-node20-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.2-node20-alpine)
- `8.3-node16-alpine` [(php/node16/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node16/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.3-node16-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.3-node16-alpine)
- `8.3-node18-alpine` [(php/node18/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node18/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.3-node18-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.3-node18-alpine)
- `8.3-node20-alpine` [(php/node20/Dockerfile)](https://github.com/cstadler333/gitlab-ci-php/blob/master/php/node20/Dockerfile) - [![Version](https://img.shields.io/docker/v/cstadler333/gitlab-ci-php/8.3-node20-alpine?style=for-the-badge&logo=docker)](https://hub.docker.com/r/cstadler333/gitlab-ci-php/tags?name=8.3-node20-alpine)

All latest versions come with:

- [Composer 2](https://getcomposer.org/)
- [Node 20](https://nodejs.org/en/)
- [NPM 10](https://www.npmjs.com/)
- [Yarn](https://yarnpkg.com)

Alternative versions available with:

- [Composer 1](https://getcomposer.org/) (only PHP 7.4 images)
- [Node 18](https://nodejs.org/en/) and [NPM 10](https://www.npmjs.com/)
- [Node 16](https://nodejs.org/en/) and [NPM 8](https://www.npmjs.com/)

---

## Gitlab pipeline examples

### Symfony examples

#### Simple `.gitlab-ci.yml` using MariaDB service

```yaml
variables:
    MYSQL_ROOT_PASSWORD: root
    MYSQL_USER: symfony
    MYSQL_PASSWORD: password
    MYSQL_DATABASE: project
    APP_ENV: prod
    DATABASE_URL: mysql://$MYSQL_USER:$MYSQL_PASSWORD@mysql/$MYSQL_DATABASE

image: cstadler333/gitlab-ci-php:8.3-alpine
services:
    - mariadb:10.11

build:
    stage: build
    before_script:
        - npm install
    script:
        - npm run build
        - composer install --prefer-dist --no-ansi --no-interaction --no-progress
```

#### Advanced `.gitlab-ci.yml` using MariaDB service, stages, templates and cache

```yaml
stages:
    - build
    - deploy

variables:
    MYSQL_ROOT_PASSWORD: root
    MYSQL_USER: symfony
    MYSQL_PASSWORD: password
    MYSQL_DATABASE: project
    APP_ENV: prod
    DATABASE_URL: mysql://$MYSQL_USER:$MYSQL_PASSWORD@mysql/$MYSQL_DATABASE

cache:
    key: $CI_COMMIT_REF_NAME
    paths:
        - node_modules/
        - vendor/

image: cstadler333/gitlab-ci-php:8.3-alpine
services:
    - mariadb:10.11

.build_template: &build
    stage: build
    before_script:
        - npm install --force
    script:
        - npm run build
        - composer install --prefer-dist --no-ansi --no-interaction --no-progress

.deploy_template: &deploy
    stage: deploy
    before_script:
        - 'which ssh-agent || ( apt-get install -qq openssh-client )'
        - eval $(ssh-agent -s)
        - ssh-add <(echo "$SSH_PRIVATE_KEY")
        - mkdir -p ~/.ssh
        - '[[ -f /.dockerenv ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config'

Build Master:
    <<: *build
    only:
        - master

Deploy Master:
    <<: *deploy
    only:
        - master
    script:
        - rsync -a --progress --human-readable --delete
            --exclude .git
            --exclude node_modules
            --exclude var
            --exclude vendor
            .
            user@server:path
```

---

## Deploying PHP applications with Gitlab

### Recommended

- [Gitlab CI Deployer](https://github.com/cstadler333/gitlab-ci-deployer)
- [Deployer](https://deployer.org/docs/7.x/recipe/symfony)
