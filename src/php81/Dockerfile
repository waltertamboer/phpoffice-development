FROM php:8.1-cli-alpine

COPY src/get-composer.sh /usr/local/bin/install-composer

RUN apk add --no-cache \
    libpng \
    zip \
 && apk add --no-cache --virtual .build-deps \
    autoconf \
    freetype-dev \
    gcc \
    g++ \
    libpng-dev \
    libjpeg-turbo-dev \
    libzip-dev \
    make \
    zlib-dev \
 && /usr/local/bin/install-composer \
 && mv composer.phar /usr/local/bin/composer \
 && rm /usr/local/bin/install-composer \
 && docker-php-source extract \
 && pecl install xdebug \
 && docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg \
 && docker-php-ext-install -j$(nproc) gd \
 && docker-php-ext-install zip \
 && docker-php-ext-enable xdebug zip \
 && docker-php-source delete \
 && curl -LO https://phar.phpunit.de/phpunit-9.5.phar \
 && chmod +x phpunit-9.5.phar \
 && mv phpunit-9.5.phar /usr/local/bin/phpunit
