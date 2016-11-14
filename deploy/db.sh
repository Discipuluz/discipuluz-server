#!/bin/bash
docker pull mongo
docker stop db
docker rm db
docker rmi mongo:current
docker tag mongo mongo:current
docker run -d --name="db" --volume="/opt/mongodb:/data/db" --restart="always" mongo