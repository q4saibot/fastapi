#!/usr/bin/env bash

docker container run \
  --name FastAPI \
  --hostname fastapi \
  --publish 80:80 \
  --detach \
  fastapi
