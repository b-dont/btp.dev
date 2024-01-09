FROM ghcr.io/getzola/zola:v0.17.1 as zola

COPY . /site-data
WORKDIR /site-data
RUN ["zola", "--config", "config/zola.config.toml", "build"]

FROM ghcr.io/static-web-server/static-web-server:2
WORKDIR /
COPY --from=zola /site-data/public /public
COPY ./config/server.config.toml /config.toml

VOLUME /etc/letsencrypt/live/brandont.dev
