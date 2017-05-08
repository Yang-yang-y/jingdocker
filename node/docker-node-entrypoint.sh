#!/bin/sh
set -e

# run composer install
if [ ! -d "/usr/src/app/node_modules" ]; then
  cd /usr/src/app/
  npm install
fi 


# first arg is `-f` or `--some-option`
# if [ "${1#-}" != "$1" ]; then
# 	set -- php-fpm "$@"
# fi


# exec "$@"

npm run "$SCRIPT"