#!/usr/bin/env bash

docker container run \
    --restart=always \
    --name="FastAPI" \
    --hostname="fastapi" \
    --volume=FastAPI:/code \
    --publish 80:80 \
    --detach \
    fastapi
