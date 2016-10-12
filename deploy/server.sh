#!/bin/bash
docker pull quay.io/discipuluz/discipuluz-server:$1
docker stop server
docker rm server
docker rmi quay.io/discipuluz/discipuluz-server:current
docker tag quay.io/discipuluz/discipuluz-server:$1 quay.io/discipuluz/discipuluz-server:current
docker run -d --name="server" --restart="on-failure" --publish="80:80" --publish="443:443" --link="back:back" --link="front:front" quay.io/discipuluz/discipuluz-server:$1