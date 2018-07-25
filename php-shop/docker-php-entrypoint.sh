#!/bin/sh
set -e

# run composer install
if [ ! -d "/var/www/xingstation-shop/vendor" ]; then
  cd /var/www/html
  composer install
fi

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi

supervisord -c /etc/supervisord.conf


exec "$@"