#!/bin/bash
docker pull quay.io/discipuluz/discipuluz-web:$1
docker stop web
docker rm web
docker rmi quay.io/discipuluz/discipuluz-web:current
docker tag quay.io/discipuluz/discipuluz-web:$1 quay.io/discipuluz/discipuluz-web:current
docker run -d --name="web" --restart="always" --publish="80:80" --publish="443:443" --link="back:back" --volume="/etc/nginx/nginx.conf:/etc/nginx/nginx.conf" --env="CONFIG=$1" quay.io/discipuluz/discipuluz-web:$1