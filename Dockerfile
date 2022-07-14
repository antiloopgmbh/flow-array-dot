FROM php:7.4-fpm

RUN apt-get update
RUN apt-get install -y zip unzip libzip-dev git
RUN docker-php-ext-install zip
RUN docker-php-ext-install pcntl
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
