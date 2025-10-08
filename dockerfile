FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    && docker-php-ext-install -j$(nproc) pdo_mysql mysqli zip

WORKDIR /var/www/html

# 修改权限
RUN chown -R www-data:www-data /var/www/html
