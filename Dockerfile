FROM docker.io/nginx

RUN apt update && apt upgrade

VOLUME ["/etc/nginx", "/etc/letsencrypt", "/var/www/brandont.dev/public"]

RUN chown -R nginx:nginx /etc/letsencrypt && \
chmod -R 700 /etc/letsencrypt && \
chown -R nginx:nginx /etc/nginx && \
chmod -R 700 /etc/nginx && \
chown -R nginx:nginx /var/www/brandont.dev-prod/public && \
chmod -R 700 /var/www/brandont.dev-prod/public

WORKDIR /etc/nginx

USER nginx
