FROM debian:bullseye

ARG         SQL_DATABASE
ARG         SQL_USER
ARG         SQL_PASSWORD
ARG         SQL_ROOT_PASSWORD

RUN apt update -y
RUN apt upgrade -y

RUN apt -y install wget


RUN apt install wordpress -y
RUN apt install php -y
RUN apt install php-fpm -y
RUN apt install -y php-mysql

RUN wget https://fr.wordpress.org/wordpress-6.4.3-fr_FR.tar.gz -P /var/www

RUN cd /var/www ; tar -xzf wordpress-6.4.3-fr_FR.tar.gz ; rm wordpress-6.4.3-fr_FR.tar.gz

RUN	chown root /var/www/wordpress

RUN apt install mariadb-client
RUN apt install curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN mkdir -p /var/run/php
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/config.sh /tmp/

EXPOSE 9000

ENTRYPOINT ["/bin/bash", "/tmp/config.sh"]



