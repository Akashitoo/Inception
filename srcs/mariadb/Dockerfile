FROM alpine:3.22
WORKDIR /app
COPY . /app
RUN mkdir -p /var/lib/mysql
EXPOSE 3306
RUN apk add --no-cache mariadb mariadb-client mariadb-common
