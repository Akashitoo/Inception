FROM alpine:3.22
COPY start.sh /start.sh
RUN mkdir -p /var/lib/mysql
RUN chmod +x /start.sh && \
	chown -R mysql:mysql /var/lib/mysql
EXPOSE 3306
RUN apk add --no-cache mariadb mariadb-client mariadb-common
ENTRYPOINT [ "/start.sh" ]
CMD ["mysqld", "--datadir=/var/lib/mysql"]