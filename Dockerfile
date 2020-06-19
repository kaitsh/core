FROM php:7.2-apache
RUN apt-get update && apt-get install -y \
        libpng-dev \
        libzip-dev \
        libicu-dev \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-install intl gettext
RUN a2enmod rewrite
