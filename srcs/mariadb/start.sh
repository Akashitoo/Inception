#!/bin/sh

if [! -d "/var/lib/mysql/mysql"];then

	mysql_install_db --datadir=/var/lib/mysql

	mysqld --datadir=/var/lib/mysql &
	MYSQL_PID=$!

	until mysqladmin ping -h localhost --silent; do
   	sleep 1
	done

	mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
   mysql -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
   mysql -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"

	kill $MYSQL_PID
	wait $MYSQL_PID
fi

exec "$@"