FROM ghcr.io/getzola/zola:v0.19.1 as zola

COPY . /site-data
WORKDIR /site-data
RUN ["zola", "--config", "conf/zola.toml", "build"]

FROM ghcr.io/static-web-server/static-web-server:latest
WORKDIR /
COPY --from=zola /site-data/public /public
COPY ./conf/server.toml /config.toml
