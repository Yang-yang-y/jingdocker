FROM php:7.1-fpm-alpine
MAINTAINER Larryzhang <zhangyang@jingfree.com>
# modify the repo to aliyun
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories
RUN apk --no-cache add curl git  openssh openssl  tini bash vim  freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev  libmcrypt-dev
#
# COPY composer-installer.php composer-setup.php
# RUN php composer-setup.php
# RUN php -r "unlink('composer-setup.php');"
# RUN mv composer.phar /usr/local/bin/composer
COPY composer /usr/local/bin/composer

RUN apk --no-cache add 	libxml2-dev autoconf g++ make  openssl-dev automake  libtool


RUN docker-php-source extract
RUN pecl update-channels
RUN pecl install redis && \
  docker-php-ext-enable redis && \
  docker-php-ext-install mysqli && \
  docker-php-ext-install pdo && \
  docker-php-ext-install pdo_mysql && \
  docker-php-ext-install tokenizer && \
  docker-php-ext-install opcache && \
  docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
  docker-php-ext-install  gd && \
  docker-php-ext-configure xmlrpc \
    --with-libxml-dir=/usr/include/ && \
  docker-php-ext-install xmlrpc && \
  docker-php-ext-install mcrypt && \
  docker-php-source delete
RUN apk --no-cache add pcre-dev
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install xdebug
RUN docker-php-ext-install zip


ADD ./laravel.ini /usr/local/etc/php/conf.d
ADD ./laravel.pool.conf /usr/local/etc/php-fpm.d/

#RUN rm -r /var/lib/apt/lists/*

#RUN usermod -u 1000 www-data
COPY ./opcache.ini /usr/local/etc/php/conf.d/opcache.ini
#COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

#EXPOSE 22
COPY ./docker-php-entrypoint.sh /usr/local/bin/docker-php-entrypoint
RUN chmod 0777 /usr/local/bin/docker-php-entrypoint

#COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com




#for python
#RUN apk --no-cache add python3 python3-dev py-pip build-base
#for scrapy
#RUN apk --no-cache add libxml2 libxslt libffi-dev libxslt-dev
#RUN pip install --upgrade pip -vvv
#RUN pip3 install  --timeout 30  --retries 5 dateutils pymongo scrapy
