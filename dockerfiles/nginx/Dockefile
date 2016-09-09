#################################################
# Dockerfile to build nginx on discipuluz server
# Based on oficial nginx Dockerfile
#################################################

FROM nginx

MAINTAINER Rodrigo Seiji Piubeli Hirao <rodrigo.seiji.hirao@gmail.com>

USER core

COPY nginx.conf /etc/nginx/nginx.conf

# exposing ports 80 for production and 8080 for development
EXPOSE 80 8080 443