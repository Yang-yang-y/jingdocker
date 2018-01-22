#!/bin/sh
set -e

# run composer install
if [ ! -d "/var/www/html/vendor" ]; then
  cd /var/www/html
  composer install
fi

su - www-data -c nohup -c "php artisan queue:work --tries=3" 1>>/var/www/html/storage/queue.log 2>&1 &


# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi



exec "$@"