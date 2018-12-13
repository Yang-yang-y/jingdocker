#!/bin/sh
set -e

# run composer install
if [ ! -d "/var/www/html/vendor" ]; then
  cd /var/www/html
  composer install
fi

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi

supervisord -c /etc/supervisord.conf
su-exec www-data:82 crond
cd /var/www/html && chown -R www-data:www-data storage 

chown -R www-data:www-data /var/spool/cron/crontabs/www-data
exec "$@"
