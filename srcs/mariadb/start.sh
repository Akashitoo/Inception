#!/bin/sh

chown -R mysql:mysql /var/lib/mysql

if [ ! -d "/var/lib/mysql/mysql" ];then

	su-exec mysql mariadb-install-db --datadir=/var/lib/mysql

	su-exec mysql mariadbd --datadir=/var/lib/mysql &
	MYSQL_PID=$!

	until mysqladmin ping -h localhost --silent; do
   	sleep 1
	done

	mariadb -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
   mariadb -u root -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
   mariadb -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"

	kill $MYSQL_PID
	wait $MYSQL_PID
fi

exec su-exec mysql "$@"