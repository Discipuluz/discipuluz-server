#################################################
# Dockerfile to build nginx on discipuluz server
# Based on oficial nginx Dockerfile
#################################################

FROM nginx:alpine

MAINTAINER Rodrigo Seiji Piubeli Hirao <rodrigo.seiji.hirao@gmail.com>

RUN mkdir -p /var/log/nginx/

COPY nginx.conf /etc/nginx/nginx.conf

# exposing ports 80 for server and 443 for SSL
EXPOSE 80 443