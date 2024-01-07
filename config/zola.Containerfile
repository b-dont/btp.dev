FROM ghcr.io/getzola/zola:v0.17.1 as zola

COPY ../. /brandont.dev
WORKDIR /brandont.dev
VOLUME .././public:/public
RUN ["zola", "--config", "config/zola.config.toml", "build"]
