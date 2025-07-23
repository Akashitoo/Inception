FROM alpine:3.22
WORKDIR /app
COPY . /app
EXPOSE 80
RUN apk add nginx
COPY selfsigned.crt /etc/nginx/ssl/selfsigned.crt
COPY selfsigned.key /etc/nginx/ssl/selfsigned.key
#CMD [ "nginx", "-g" , "daemon off;" ]
CMD [ "ash" ]