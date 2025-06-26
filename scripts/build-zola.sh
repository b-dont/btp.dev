#!/bin/bash

docker run -it --rm --network=host \
	-v $PWD:/app \
	--workdir /app \
	ghcr.io/getzola/zola:v0.20.0 --config zola.toml build
