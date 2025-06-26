#!/bin/bash

docker run -u "$(id -u):$(id -g)" \
	-v "$PWD"/src:/app \
	--workdir /app \
	ghcr.io/getzola/zola:v0.20.0 --config zola.toml build
