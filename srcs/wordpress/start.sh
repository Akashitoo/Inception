#!/bin/sh

echo 'Config wordpress\n';

wp config create --dbname="$WORDPRESS_DB_NAME" --dbuser="$MYSQL_USER" --dbpass="$WORDPRESS_DB_PASSWORD" --dbhost="$WORDPRESS_DB_HOST" --allow-root	

exec "$@"