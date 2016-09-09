########################################################
# Dockerfile to build Polymer project and move to server
# Based on oficial nginx Dockerfile
########################################################
FROM python:2.7

MAINTAINER Rodrigo Seiji Piubeli Hirao <rodrigo.seiji.hirao@gmail.com>

USER core

RUN mkdir -p /usr/src/app/prod
WORKDIR /usr/src/app/prod

ONBUILD COPY requirements.txt /usr/src/app/prod/
ONBUILD RUN pip install --no-cache-dir -r requirements.txt

ONBUILD COPY . /usr/src/app/prod/

ONBUILD WORKDIR /usr/src/app/prod/
ONBUILD RUN pypolyback -s