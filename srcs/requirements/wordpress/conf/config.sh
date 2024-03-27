#!/bin/bash

mv var/www/wordpress/* /var/www/html/

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
# echo mv ok
wp config set DB_NAME $SQL_DATABASE --allow-root --path=/var/www/html/
# echo "1 ok"
wp config set DB_USER $SQL_USER --allow-root --path=/var/www/html/
# echo "2 ok"
wp config set DB_PASSWORD $SQL_PASSWORD --allow-root --path=/var/www/html/
# echo "3 ok"
wp config set DB_HOST mariadb --allow-root --path=/var/www/html/
# echo "4 ok"

# ./usr/sbin/php-fpm7.4 -F