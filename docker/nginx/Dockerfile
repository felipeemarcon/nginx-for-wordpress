# our base image
FROM alpine:latest

# specify the port number the container should expose
EXPOSE 3000
EXPOSE 80

# User user as root
USER root

# Create App
RUN mkdir /app

# Installing Services
RUN apk update
RUN apk add bash
RUN apk add openrc
RUN mkdir /run/openrc && touch /run/openrc/softlevel
RUN rc-status

# NGinx
RUN apk add nginx
RUN rc-update add nginx

# PHP
RUN apk add php81
RUN apk add php81-fpm
RUN apk add php81-pdo_mysql
RUN apk add php81-mysqli
RUN apk add php81-mbstring
RUN apk add php81-xmlreader
RUN apk add php81-curl
RUN apk add php81-iconv
RUN apk add php81-zip
RUN apk add php81-gd
RUN apk add php81-xml
RUN apk add php81-exif
RUN apk add php81-fileinfo
RUN apk add php81-pecl-imagick
RUN apk add php81-intl
RUN apk add php81-simplexml
RUN apk add php81-session
