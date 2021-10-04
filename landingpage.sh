#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo apt-get install php-fpm -y
sudo apt-get install php-mysql -y
sudo git clone https://github.com/sdcilsy/landing-page.git
sudo rm -rf /var/www/html/*
sudo mv landing-page/* /var/www/html
sudo wget -O /etc/nginx/sites-available/default https://raw.githubusercontent.com/Tsubekti/nginx-config/master/default
sudo systemctl reload nginx
