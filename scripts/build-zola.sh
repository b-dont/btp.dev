#!/bin/bash

docker run -u "$(id -u):$(id -g)" \
	-v /var/www/brandont.dev-prod/src:/app \
	--workdir /app \
	ghcr.io/getzola/zola:v0.20.0 --config zola.toml build
