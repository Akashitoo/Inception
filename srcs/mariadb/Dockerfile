FROM alpine:3.21.4

RUN apk add --no-cache mariadb mariadb-client mariadb-common su-exec

COPY start.sh /start.sh
RUN mkdir -p /var/lib/mysql /run/mysqld
RUN chmod +x /start.sh && \
	 chown -R mysql:mysql /run/mysqld
#RUN chown -R mysql:mysql /var/lib/mysql
EXPOSE 3306
#USER mysql
ENTRYPOINT [ "/start.sh" ]
CMD ["mariadbd"]