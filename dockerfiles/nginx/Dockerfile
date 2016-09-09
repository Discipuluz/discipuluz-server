#################################################
# Dockerfile to build nginx on discipuluz server
# Based on oficial nginx Dockerfile
#################################################

FROM nginx

MAINTAINER Rodrigo Seiji Piubeli Hirao <rodrigo.seiji.hirao@gmail.com>

RUN mkdir -p /usr/share/nginx/html

RUN mkdir -p /var/log/nginx/

COPY nginx.conf /etc/nginx/nginx.conf

COPY build/unbundled /usr/share/nginx/html/dev
COPY build/bundled /usr/share/nginx/html/prod

# exposing ports 80 for production and 8080 for development
EXPOSE 80 8080 443