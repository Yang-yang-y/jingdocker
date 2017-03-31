FROM php:7.1.3-fpm-alpine
MAINTAINER Larryzhang <zhangyang@jingfree.com>
# modify the repo to aliyun
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories
# install composer
RUN apk --no-cache add curl git  openssh openssl  tini bash vim  freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev
#RUN apk --no-cache add curl bash vim 
#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
COPY composer-installer.php composer-setup.php
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

# RUN apk --update --no-cache add php7-mcrypt php7-gd php7-opcache php7-soap php7-pdo \
#         php7-pdo_mysql php7-tokenizer
RUN docker-php-source extract && \
  apk add  --no-cache autoconf g++ make  
RUN pecl install redis && \
  docker-php-ext-enable redis && \
  docker-php-ext-install mysqli && \
  docker-php-ext-install pdo && \
  docker-php-ext-install pdo_mysql && \
  #docker-php-ext-install mbstring && \
  docker-php-ext-install tokenizer && \
  docker-php-ext-install opcache && \
  docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ && \
  docker-php-ext-install  gd && \
  docker-php-source delete

RUN pecl install xdebug


ADD ./laravel.ini /usr/local/etc/php/conf.d
ADD ./laravel.pool.conf /usr/local/etc/php-fpm.d/

#RUN rm -r /var/lib/apt/lists/*

#RUN usermod -u 1000 www-data
#RUN php5enmod mcrypt
COPY ./opcache.ini /usr/local/etc/php/conf.d/opcache.ini
#COPY ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

#EXPOSE 22
COPY ./docker-php-entrypoint.sh /usr/local/bin/docker-php-entrypoint.sh
#COPY docker-entrypoint.sh /docker-entrypoint.sh








