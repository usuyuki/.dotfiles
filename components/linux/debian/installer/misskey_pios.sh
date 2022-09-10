#!/bin/bash -eu
# 参考記事
# https://hide.ac/articles/iFwm5HDvH
jobName="Setup Misskey"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# misskeyユーザーの作成
sudo adduser --disabled-password --disabled-login misskey
#パスワードなしなので sudo su で入る
# nodeインストール→省略(asdfで導入)
# postgresql
sudo apt -y install postgresql
psql --version
# redis (raspiでapt-repositryできる)
sudo add-apt-repository ppa:chris-lea/redis-server
sudo apt update
sudo apt install -y redis-server
systemctl start redis-server
systemctl enable redis-server
# nginx→serverStoreでインストール済み

# misskeyのインストール
sudo su - misskey
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