#!/usr/bin/env bash

set -euo pipefail

ln -s /usr/local/lib/npm/bin/npm-cli.js /usr/local/bin/npm

npm i -g --force npm@${NPM_VERSION}

curl -o- -L https://yarnpkg.com/install.sh | bash

rm -rf /usr/share/man /var/cache/apk/* \
  /root/.npm /root/.node-gyp /root/.gnupg /usr/local/lib/node_modules/npm/man \
  /usr/local/lib/node_modules/npm/doc /usr/local/lib/node_modules/npm/html /usr/local/lib/node_modules/npm/scripts
