#!/bin/bash
scp ../nginx/nginx.conf $1:/etc/nginx/nginx.conf
scp -r ../deploy $1:/etc/deploy