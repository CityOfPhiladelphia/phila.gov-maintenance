#!/bin/bash

set -e

apt-get update
apt-get install -y nginx

mv /tmp/nginx.conf /etc/nginx/nginx.conf
chmod 644 /etc/nginx/nginx.conf

mv /tmp/maintenance.html /usr/share/nginx/html/maintenance.html
chmod 644 /usr/share/nginx/html/maintenance.html
