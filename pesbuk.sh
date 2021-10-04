
#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo apt-get install php-fpm -y
sudo apt-get install php-mysql -y
sudo apt-get install unzip -y
sudo apt-get install mariadb-server -y
sudo wget https://github.com/sdcilsy/sosial-media/archive/master.zip
sudo rm -rf /var/www/html/*
sudo unzip master.zip
sudo mv sosial-media-master/* /var/www/html
sudo mysql -e "CREATE USER 'devopscilsy'@'localhost' IDENTIFIED BY '1234567890';"
sudo mysql -e "grant all privileges on *.* to 'devopscilsy'@'localhost'"
sudo mysql -e "CREATE DATABASE dbsosmed" 
sudo mysql -u devopscilsy -p1234567890 dbsosmed < /var/www/html/dump.sql 
sudo wget -O /etc/nginx/sites-available/default https://raw.githubusercontent.com/Tsubekti/nginx-config/master/default
sudo systemctl reload nginx


