FROM php:8.1-apache
COPY . /var/www/html/ # Copy your PHP code to the Apache web root
RUN apt-get update && apt-get install -y git zip unzip
RUN docker-php-ext-install pdo_mysql # Install necessary extensions
