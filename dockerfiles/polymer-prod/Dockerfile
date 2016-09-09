########################################################
# Dockerfile to build Polymer project and move to server
# Based on oficial nginx Dockerfile
########################################################
FROM node:4

MAINTAINER Rodrigo Seiji Piubeli Hirao <rodrigo.seiji.hirao@gmail.com>

USER core

ENV VERSION 1.6.1
ENV BOWER_VERSION 1.7.9

# Install polymer and bower
RUN apk add --no-cache --virtual .build-deps git \
  && npm install -g \
    polymer-cli@${VERSION} \
    bower@${BOWER_VERSION} \
  && apk del .build-deps \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/polymer"]

RUN mkdir -p /usr/share/nginx/html/prod
ONBUILD RUN git clone -b prod https://github.com/Discipuluz/discipuluz-web.git
ONBUILD WORKDIR ./discipuluz-web 
ONBUILD RUN polymer build
ONBUILD RUN mv -r build/bundled /usr/share/nginx/html/prod
ONBUILD RUN rm -rf ./