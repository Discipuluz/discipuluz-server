#!/bin/bash
docker pull quay.io/discipuluz/back:$1
docker stop back
docker rm back
docker rmi quay.io/discipuluz/back:current
docker tag quay.io/discipuluz/back:$1 quay.io/discipuluz/back:current
docker run -d --name back --restart on-failure --link API quay.io/discipuluz/nginx:$1