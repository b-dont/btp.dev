#!/bin/sh
echo $CERTBOT_VALIDATION > /var/www/htdocs/.well-known/cme-challenge/$CERTBOT_TOKEN
