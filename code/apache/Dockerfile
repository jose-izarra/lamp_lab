# Web Server with Apache and PHP
FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

LABEL maintainer "Eduardo Rodriguez"
LABEL image_type "Apache Webserver with PHP"

ENV DOC_ROOT /var/www/mysite-dev

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    apache2 \
    libapache2-mod-php \
    php7.4 \
    php7.4-mysql \
    && rm -rf /var/lib/apt/lists/*

WORKDIR ${DOC_ROOT}

COPY sites/mysite .

ADD config/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80

CMD apachectl -D FOREGROUND


