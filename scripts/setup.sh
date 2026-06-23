#!/bin/bash
apt-get update -y -qq
apt-get install -y -qq git nginx
git config --global user.email "learner@gitworkshop.com"
git config --global user.name "Learner"
git config --global init.defaultBranch main
mkdir -p /root/gitproject
rm -f /var/www/html/index.nginx-debian.html
ln -sfn /root/gitproject /var/www/html/site
echo 'server { listen 80; root /var/www/html/site; index index.html; }' > /etc/nginx/sites-available/default
nginx
