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
	php83-phar \
	wget \
	curl \
	unzip 

WORKDIR /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

RUN wget https://fr.wordpress.org/latest-fr_FR.zip && \
	 unzip latest-fr_FR.zip && \
	 mv wordpress/* . && \
	 rm -rf wordpress latest-fr_FR.zip

RUN chmod -R 755 /var/www/html

COPY start.sh /start.sh
RUN chmod +x /start.sh
COPY www.conf /etc/php83/php-fpm.d/www.conf

EXPOSE 9000

ENTRYPOINT [ "/start.sh" ]
CMD [ "php-fpm83", "-F"]