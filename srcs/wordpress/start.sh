#!/bin/sh

echo 'Config wordpress';

if [ ! -f "/var/www/html/wp-config.php" ];then
	wp config create --dbname="$WORDPRESS_DB_NAME" --dbuser="$WORDPRESS_DB_USER" --dbpass="$WORDPRESS_DB_PASSWORD" --dbhost="$WORDPRESS_DB_HOST" --allow-root	
fi
if ! wp core is-installed --allow-root; then
	wp core install --url=abalasub.42.fr --title=ABALASUB42 --admin_user=$WORDPRESS_DB_USER --admin_password=$WORDPRESS_DB_PASSWORD --admin_email=netflixnvx@gmail.com --skip-email --allow-root 
fi

if ! wp user exists modo --allow-root; then
	wp user create modo modo@gmail.com --role=author --user_pass=$WORDPRESS_USER_PASS --allow-root
fi
exec "$@"