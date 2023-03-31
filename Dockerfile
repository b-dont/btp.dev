FROM alpine:latest

RUN apk add --upgrade apk-tools &&\
apk add zola &&\
# nginx prereqs
apk add openssl curl ca-certificates &&\
# Set up the apk repo for stable nginx packages
printf "%s%s%s%s\n" \
    "@nginx " \
    "http://nginx.org/packages/alpine/v" \
    `egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release` \
    "/main" \
    | sudo tee -a /etc/apk/repositories && \
# Import an official nginx signing key
curl -o /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub &&\
# Verify key from download
openssl rsa -pubin -in /tmp/nginx_signing.rsa.pub -text -noout &&\
# Move the key to apk trusted keys storage
sudo mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/ &&\
# Finally, install nginx
apk add nginx@nginx

RUN nginx
