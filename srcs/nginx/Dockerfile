FROM alpine:3.22
WORKDIR /app
COPY . /app
EXPOSE 80
RUN apk add nginx
CMD [ "nginx", "-g" , "daemon off;" ]