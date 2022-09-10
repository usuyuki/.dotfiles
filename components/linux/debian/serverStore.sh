#!/bin/bash -eu
# サーバー用で使うソフトウェア
jobName="Install server tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# ufw
sudo apt install -y ufw 
sudo ufw default deny
sudo ufw allow 22
sudo ufw enable

sudo systemctl start ufw
sudo systemctl enable ufw

# nginx
sudo apt install -y nginx 
sudo systemctl start nginx
sudo systemctl enable nginx

# let's encryptのやつ
apt install -y certbot python3-certbot-dns-cloudflare
echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"