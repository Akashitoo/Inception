FROM alpine:3.22
EXPOSE 443
RUN apk add --no-cache nginx
COPY selfsigned.crt /etc/nginx/ssl/selfsigned.crt
COPY selfsigned.key /etc/nginx/ssl/selfsigned.key
COPY nginx.conf /etc/nginx/nginx.conf
CMD [ "nginx", "-g" , "daemon off;" ]
