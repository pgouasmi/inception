#!/bin/bash

wp config create	--allow-root \
					--dbname=$SQL_DATABASE \
					--dbuser=$SQL_USER \
					--dbpass=$SQL_PASSWORD \
					--dbhost=mariadb:3306 --path='/var/www/wordpress'

wp core install --url=pgouasmi.42.fr --title=Inception --admin_user=$SQL_USER --admin_email=$ADMINMAIL --prompt=admin_password $SQL_PASSWORD


if [ -f /tmp/config.sh ] ; then
    rm /tmp/config.sh
fi

# if [ -f run/php ] ; then
   
# else
#      mkdir /run/php
# fi

# ./usr/bin/php-fpm7.4 -F
