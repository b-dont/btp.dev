FROM caddy:builder as builder

WORKDIR /

RUN xcaddy build \
--with github.com/caddy-dns/namecheap

FROM caddy:latest

COPY --from=builder /caddy /usr/bin/caddy
