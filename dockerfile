FROM php:7.2-apache
COPY /build/alpha /var/www/html/
RUN chown www-data:www-data /var/www/html/
