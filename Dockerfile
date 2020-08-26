FROM php:7.4-rc-alpine

COPY libxml2-2.8.0.tar.gz /tmp

WORKDIR /var/www/html

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html/"]