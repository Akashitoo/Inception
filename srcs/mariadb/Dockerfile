FROM alpine:3.21.4
RUN apk add --no-cache mariadb mariadb-client mariadb-common su-exec
COPY start.sh /start.sh
COPY mariadb-server.conf /etc/my.cnf.d/mariadb-server.cnf
RUN mkdir -p /var/lib/mysql /run/mysqld
RUN chmod +x /start.sh && \
	 chown -R mysql:mysql /run/mysqld
EXPOSE 3306
ENTRYPOINT [ "/start.sh" ]
CMD ["mariadbd", "--datadir=/var/lib/mysql","--user=mysql"]