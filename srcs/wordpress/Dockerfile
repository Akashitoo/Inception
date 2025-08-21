FROM alpine:3.21.4

RUN echo "https://dl-cdn.alpinelinux.org/alpine/v3.21/main" >> /etc/apk/repositories && \
    echo "https://dl-cdn.alpinelinux.org/alpine/v3.21/community" >> /etc/apk/repositories && \
    apk update

RUN apk add --no-cache \
	php83 \
	php83-fpm \
	php83-mysqli \
	php83-json \
	php83-curl \
	php83-xml \
	wget \
	unzip

WORKDIR /var/www/html

RUN wget https://fr.wordpress.org/latest-fr_FR.zip && \
	 unzip latest-fr_FR.zip && \
	 mv wordpress/* . && \
	 rm -rf wordpress latest-fr_FR.zip

	 COPY www.conf /etc/php81/php-fpm.d/www.conf

EXPOSE 9000

CMD [ "php-fpm83", "-F"]