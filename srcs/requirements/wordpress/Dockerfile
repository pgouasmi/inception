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
RUN apt install php-mysql -y

RUN wget https://fr.wordpress.org/wordpress-6.4.3-fr_FR.tar.gz -P /var/www

RUN cd /var/www ; tar -xzf wordpress-6.4.3-fr_FR.tar.gz ; rm wordpress-6.4.3-fr_FR.tar.gz

RUN	chown root /var/www/wordpress

RUN apt install mariadb-client
RUN apt install curl -y
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN mkdir -p /var/run/php
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/wp_config.php /var/www/wordpress

RUN rm -rf /tmp/config.sh

COPY conf/config.sh /tmp/

# # RUN mkdir /run/php

# ENTRYPOINT ["/bin/bash", "/tmp/config.sh"]

# RUN sleep 5

# RUN wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'
# RUN mkdir /run/php

# RUN /usr/sbin/php-fpm7.3 -F



