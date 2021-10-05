#!/usr/bin/env bash

docker builder build \
	--tag fastapi \
	--pull \
	--rm=false \
	.