FROM debian:bullseye

RUN apt update -y
RUN apt upgrade -y
RUN apt install wordpress -y
RUN apt install php -y
RUN apt install php-fpm -y
RUN apt install php-mysql -y
RUN apt install mariadb-client
RUN apt install curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN mkdir -p /var/run/php
