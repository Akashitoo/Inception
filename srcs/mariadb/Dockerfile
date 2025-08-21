FROM alpine:3.21.4

RUN apk add --no-cache mariadb mariadb-client mariadb-common

COPY start.sh /start.sh
RUN mkdir -p /var/lib/mysql
RUN chmod +x /start.sh && \
	chown -R mysql:mysql /var/lib/mysql
EXPOSE 3306

ENTRYPOINT [ "/start.sh" ]
CMD ["mysqld --user=root --skip-syslog --skip-symbolic-links --datadir=/var/lib/mysql"]