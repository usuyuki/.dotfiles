#!/bin/bash -eu
# サーバー用で使うソフトウェア
jobName="Install server tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# ufw
sudo apt -y install ufw 
sudo ufw default deny
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable

sudo systemctl start ufw
sudo systemctl enable ufw


# nginx
sudo apt -y install nginx 
sudo systemctl start nginx
sudo systemctl enable nginx

sudo ufw allow 'Nginx HTTP'

# cerbot
sudo apt -y install certbot python3-certbot-nginx

#mariadb
sudo apt install -y mariadb-server
sudo mysql_secure_installation
# ミスするとデータベース使えなくなるので注意、特にnが多いので

# https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-20-04-ja




#php
sudo apt -y install php-fpm php-mysql

# let's encryptのやつ
sudo apt -y install -y certbot python3-certbot-nginx python3-certbot-dns-cloudflare
mkdir /etc/cloudflare

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"