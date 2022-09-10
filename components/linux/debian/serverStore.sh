# サーバー用で使うソフトウェア
jobName="Install server tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# nginx
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# let's encryptのやつ
apt install -y certbot python3-certbot-dns-cloudflare
echo "----------------------------"
echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "----------------------------"