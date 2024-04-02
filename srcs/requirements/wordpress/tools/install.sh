#!/bin/bash

if [ ! -f /var/www/wordpress/wp-config.php ]; then

	wp-cli.phar core download --path=/var/www/wordpress --allow-root


	wp-cli.phar config create --dbname=${WORDPRESS_DATABASE} \
	                          --dbuser=${WORDPRESS_DATABASE_USER} \
	                          --dbpass=${WORDPRESS_DATABASE_USER_PASSWORD} \
	                          --dbhost=mariadb:3306 \
	                          --path=/var/www/wordpress \
	                          --allow-root

	wp-cli.phar core install --url="${WORDPRESS_WEBSITE_URL}" \
	                         --title="${WORDPRESS_WEBSITE_TITLE}" \
	                         --admin_user="${WORDPRESS_WEBSITE_ADMIN}" \
	                         --admin_password="${WORDPRESS_WEBSITE_ADMIN_PASSWORD}" \
	                         --admin_email=${WORDPRESS_WEBSITE_ADMIN_EMAIL} \
	                         --path=/var/www/wordpress \
	                         --allow-root

	wp-cli.phar user create ${WORDPRESS_WEBSITE_USER} ${WORDPRESS_WEBSITE_USER_EMAIL} \
	                        --user_pass=${WORDPRESS_WEBSITE_USER_PASSWORD} \
	                        --role=editor \
	                        --path=/var/www/wordpress \
	                        --allow-root

fi

mkdir -p /run/php
chown -R www-data:www-data /var/www/wordpress
php-fpm7.4 -F
