#!/bin/bash -eu
# 参考記事
# https://hide.ac/articles/iFwm5HDvH
jobName="Setup Misskey"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# misskeyユーザーの作成
adduser --disabled-password --disabled-login misskey
# nodeインストール→省略(asdfで導入)
# postgresql
sudo apt install postgresql
psql --version
# redis
add-apt-repository ppa:chris-lea/redis-server
apt update
apt install -y redis-server
systemctl start redis-server
systemctl enable redis-server
# nginx→serverStoreでインストール済み

# misskeyのインストール
su - misskey
git clone https://github.com/Usuyuki/usuyukey.git
cd usuyukey
git submodule update --init
yarn install


echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"

# この後手動でやること
# ぽすぐれユーザー作成
# yarn build & migration
# misskeyデーモン化