########################################################
# Dockerfile to build Polymer project and move to server
# Based on oficial nginx Dockerfile
########################################################
FROM python:2.7

MAINTAINER Rodrigo Seiji Piubeli Hirao <rodrigo.seiji.hirao@gmail.com>

USER discipuluz+core

RUN mkdir -p /usr/src/app/dev
WORKDIR /usr/src/app/dev

ONBUILD COPY requirements.txt /usr/src/app/dev/
ONBUILD RUN pip install --no-cache-dir -r requirements.txt

ONBUILD COPY . /usr/src/app/dev/

ONBUILD WORKDIR /usr/src/app/dev/
ONBUILD RUN rm ./config/dev.config
ONBUILD RUN pypolyback -s