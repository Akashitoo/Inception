FROM alpine:3.22
WORKDIR /app
COPY start.sh /start.sh
RUN chmod +x /start.sh
RUN mkdir -p /var/lib/mysql
EXPOSE 3306
RUN apk add --no-cache mariadb mariadb-client mariadb-common
ENTRYPOINT [ "./start.sh" ]
CMD ["mysqld", "--datadir=/var/lib/mysql"]