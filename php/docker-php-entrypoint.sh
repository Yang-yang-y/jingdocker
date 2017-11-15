#!/bin/sh
set -e

# run composer install
if [ ! -d "/var/www/html/vendor" ]; then
  cd /var/www/html
  composer install
fi

nohup php artisan queue:work 1>storage/logs/queue.log 2>&1 &

echo '*       *       *       *       *       php /var/www/html/artisan schedule:run >> /dev/null 2>&1' >> /var/spool/cron/crontabs/root 2>&1
crond

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi



exec "$@"