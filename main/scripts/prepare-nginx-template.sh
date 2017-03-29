#!/bin/sh
envsubst < /etc/nginx/conf-templates/nginx.conf.template > /etc/nginx/nginx.conf
