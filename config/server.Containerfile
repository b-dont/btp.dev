FROM ghcr.io/static-web-server/static-web-server:2
WORKDIR /
COPY ./config/server.config.toml /config.toml
