#################################################
# Dockerfile to build nginx on discipuluz server
# Based on oficial nginx Dockerfile
#################################################

FROM nginx:alpine

MAINTAINER Rodrigo Seiji Piubeli Hirao <rodrigo.seiji.hirao@gmail.com>

RUN mkdir -p /usr/share/nginx/html/prod
RUN mkdir -p /usr/share/nginx/html/dev
RUN mkdir -p /usr/share/nginx/html/temp

RUN mkdir -p /var/log/nginx/

COPY nginx.conf /etc/nginx/nginx.conf

#Lovely git
RUN apk update && apk upgrade && \
apk add --no-cache git nodejs

WORKDIR /usr/share/nginx/html/temp
RUN git clone https://github.com/Discipuluz/discipuluz-web .

# Install polymer and bower
RUN npm install -g \
    polymer-cli \
    bower

RUN polymer build

RUN mv build/bundled /usr/share/nginx/html/prod
WORKDIR /usr/share/nginx/html/prod
RUN bower install

RUN mv build/unbundled /usr/share/nginx/html/dev
WORKDIR /usr/share/nginx/html/dev
RUN bower install

RUN rm -rf /usr/share/nginx/html/temp

# exposing ports 80 for production and 8080 for development
EXPOSE 80 8080 443