#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo apt install php-fpm php-common php-mbstring php-xmlrpc php-soap php-gd php-xml php-intl php-mysql php-cli php-ldap php-zip php-curl -y
sudo apt-get install unzip -y
sudo apt-get install mariadb-server -y
sudo rm -rf /var/www/html/*
sudo wget http://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
sudo mv wordpress/* /var/www/html
sudo chown -R www-data: /var/www/html/
sudo mysql -e "CREATE USER 'devopscilsy'@'localhost' IDENTIFIED BY '1234567890';"
sudo mysql -e "grant all privileges on *.* to 'devopscilsy'@'localhost'"
sudo mysql -e "CREATE DATABASE wordpress" 
sudo wget -O /etc/nginx/sites-available/default https://raw.githubusercontent.com/Tsubekti/nginx-config/master/default
sudo systemctl reload nginx
