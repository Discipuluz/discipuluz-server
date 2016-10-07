#!/bin/bash
docker pull quay.io/discipuluz/nginx:$1
docker stop server
docker rm server
docker rmi quay.io/discipuluz/nginx:current
docker tag quay.io/discipuluz/nginx:$1 quay.io/discipuluz/nginx:current
docker run -d --name server --restart on-failure -p 80:80 -p 443:443 --link API:API quay.io/discipuluz/nginx:$1