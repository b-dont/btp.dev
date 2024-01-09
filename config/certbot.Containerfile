FROM certbot/certbot:latest

VOLUME /etc/letsencrypt

WORKDIR /etc/letsencrypt

COPY ./scripts/authenticator.sh /authenticator.sh
COPY ./scripts/cleanup.sh /cleanup.sh

RUN certbot certonly \
--manual \
--preferred-challenges=dns \
--manual-auth-hook /authenticator.sh \
--manual-cleanup-hook /cleanup.sh \
-d '*.brandont.dev,brandont.dev' \
--non-interactive \
--agree-tos \
-m btp@brandont.dev \
--staging
