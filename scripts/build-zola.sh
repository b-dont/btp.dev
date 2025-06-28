#!/bin/bash

docker run -u 0 \
	-v ./src:/app \
	--workdir /app \
	ghcr.io/getzola/zola:v0.20.0 --config zola.toml build
