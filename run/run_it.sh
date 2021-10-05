#!/usr/bin/env bash

docker container run \
  --interactive \
  --tty \
  --name FastAPI \
  --hostname fastapi \
  --publish 80:80 \
  fastapi
