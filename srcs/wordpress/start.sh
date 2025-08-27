#!/bin/sh

echo 'Config wordpress\n';

wp config create --dbname="$WORDPRESS_DB_NAME" --dbuser="$MYSQL_USER" --dbpass="$WORDPRESS_DB_PASSWORD" --dbhost="$WORDPRESS_DB_HOST" --allow-root	
#wp core install --url="https://abalasub.42.fr" --title="ABALASUB42" --admin_user="abalasub" --admin_password="salut42!" --admin_email="boss@toto.com" --skip-email --allow-root
wp core install --url=abalasub.42.fr --title=ABALASUB42 --admin_user=boss --admin_password=boss75018 --admin_email=netflixnvx@gmail.com --allow-root
exec "$@"