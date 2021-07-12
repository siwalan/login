FROM php:7.4-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y

COPY /build/alpha /var/www/html/
RUN chown www-data:www-data /var/www/html/
