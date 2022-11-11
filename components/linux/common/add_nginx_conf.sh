sitedomain=$1 #第一引数
echo "$sitedomain を設定します"
sudo mkdir /var/www/$sitedomain
sudo chown -R $USER:$USER /var/www/$sitedomain

#なぜかパーミッションエラーになる (なっても先に進むのでシンボリックできる)
sudo cat <<EOF > /etc/nginx/sites-available/$sitedomain
server {
    listen 80;
    server_name $sitedomain;
    root /var/www/$sitedomain;

    index index.html index.htm index.php;

    location / {
        try_files $uri $uri/ =404;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php8.1-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }

}
EOF

sudo ln -s /etc/nginx/sites-available/$sitedomain /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl reload nginx

sudo certbot --nginx -d $sitedomain 

