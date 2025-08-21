FROM alpine:3.22

RUN apk add --no-cache \
	php81 \
	php81-fpm \
	php81-mysqli \
	php81-json \
	php81-curl \
	php81-xml \
	wget \
	unzip \

RUN wget https://fr.wordpress.org/latest-fr_FR.zip

EXPOSE 9000

