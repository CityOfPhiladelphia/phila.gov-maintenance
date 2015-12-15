#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y nginx

curl https://raw.githubusercontent.com/CityOfPhiladelphia/phila.gov-maintenance/master/nginx.conf > /etc/nginx/nginx.conf
chmod 644 /etc/nginx/nginx.conf

curl https://raw.githubusercontent.com/CityOfPhiladelphia/phila.gov-maintenance/master/maintenance.html > /usr/share/nginx/html/maintenance.html
chmod 644 /usr/share/nginx/html/maintenance.html

service nginx reload
