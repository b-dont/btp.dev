FROM docker.io/nginx

VOLUME ["/etc/nginx", "/etc/letsencrypt", "/var/www/brandont.dev/public"]

RUN apt update && apt upgrade && \
apt install slirp4netns && \
chown -R nginx:nginx /etc/letsencrypt && \
chmod -R 700 /etc/letsencrypt && \
chown -R nginx:nginx /etc/nginx && \
chmod -R 700 /etc/nginx && \
chown -R nginx:nginx /var/www/brandont.dev-prod/public && \
chmod -R 700 /var/www/brandont.dev-prod/public

WORKDIR /etc/nginx

USER nginx
