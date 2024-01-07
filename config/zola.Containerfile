FROM ghcr.io/getzola/zola:v0.17.1 as zola

COPY ../ /brandont.dev
WORKDIR /brandont.dev
RUN ["zola", "--config", "config/zola.config.toml", "--root", "/home/brandon/projects/web/brandont.dev", "build"]
