FROM php:7.3-fpm-alpine

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN docker-php-ext-configure pdo_mysql && docker-php-ext-install pdo_mysql \
 && apk add --update

RUN apk --no-cache add build-base \
    libpng-dev \
    lcms2-dev \
    bash \
    git