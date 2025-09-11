FROM alpine:3.21.4

RUN apk add --no-cache nginx openssl

#COPY selfsigned.crt /etc/nginx/ssl/selfsigned.crt
#COPY selfsigned.key /etc/nginx/ssl/selfsigned.key
RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/selfsigned.key \
    -out /etc/nginx/ssl/selfsigned.crt \
    -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=Student/CN=abalasub.42.fr"

RUN ls -la /etc/nginx/ssl/ && \
    chmod 600 /etc/nginx/ssl/selfsigned.key && \
    chmod 644 /etc/nginx/ssl/selfsigned.crt

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD [ "nginx", "-g" , "daemon off;" ]
