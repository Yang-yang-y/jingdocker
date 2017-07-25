#!/bin/sh
set -e
# cd /usr/src/app/$SUBPROJECT

# # run composer install
# if [ ! -d "/usr/src/app/$SUBPROJECT/node_modules" ]; then
#   npm install
# fi 


# # first arg is `-f` or `--some-option`
# # if [ "${1#-}" != "$1" ]; then
# # 	set -- php-fpm "$@"
# # fi


# # exec "$@"

# npm run "$SCRIPT"
# npm run start
cd /usr/src/app/
sh build.sh $SCRIPT