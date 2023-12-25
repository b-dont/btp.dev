FROM ghcr.io/getzola/zola:v0.17.1 as zola

COPY . /brandont.dev
WORKDIR /brandont.dev
RUN ["zola", "--config ./config/zola.config.toml", "build"]

FROM ghcr.io/static-web-server/static-web-server:2
WORKDIR /
COPY --from=zola /brandont.dev/public /public

RUN ["static-web-server", "-w ./config/server.config.toml"]
