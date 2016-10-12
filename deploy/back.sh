#!/bin/bash
docker pull quay.io/discipuluz/discipuluz-back:$1
docker stop back
docker rm back
docker rmi quay.io/discipuluz/discipuluz-back:current
docker tag quay.io/discipuluz/discipuluz-back:$1 quay.io/discipuluz/discipuluz-back:current
docker run -d --name="back" --restart="on-failure" --link="db:db" quay.io/discipuluz/discipuluz-back:$1