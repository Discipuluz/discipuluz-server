#!/bin/bash
docker pull quay.io/discipuluz/discipuluz-web:$1
docker stop web
docker rm web
docker rmi quay.io/discipuluz/discipuluz-web:current
docker tag quay.io/discipuluz/discipuluz-web:$1 quay.io/discipuluz/discipuluz-web:current
docker run -d --name="web" --restart="on-failure" quay.io/discipuluz/discipuluz-web:$1