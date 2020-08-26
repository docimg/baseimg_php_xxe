FROM php:7.4-alpine

COPY libxml2-2.8.0.tar.gz /tmp

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update && apk del libxml2 \
    && apk add gcc g++ make \
    && cd /tmp && tar -xzvf libxml2-2.8.0.tar.gz

WORKDIR /var/www/html

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html/"]