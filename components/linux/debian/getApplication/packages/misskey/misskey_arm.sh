#!/bin/bash -eu
# 参考記事
# https://hide.ac/articles/iFwm5HDvH
jobName="Setup Misskey"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"
# misskeyユーザーの作成
sudo adduser --disabled-password --disabled-login misskey
#パスワードなしなので sudo su で入る
# nodeインストール→省略(asdfで導入)
sudo apt -y install ffmpeg
# postgresql
sudo apt -y install postgresql
psql --version
#accountとDBつくる

# mailsearch 2023.9.1~
curl -L https://install.meilisearch.com | sh
sudo mv $HOME/meilisearch /usr/local/bin/meilisearch
sudo chmod a+x /usr/local/bin/meilisearch
# https://lindevs.com/install-meilisearch-on-ubuntu

# redis (raspiでapt-repositryできる)
# sudo add-apt-repository ppa:chris-lea/redis-server
# sudo apt update
sudo apt install -y redis-server
sudo systemctl start redis-server
sudo systemctl enable redis-server
# nginx→install/installer_server.shでインストール済み

#asdf設定(ユーザー単位で切られるので、dotfilesで全体に追加した後前提)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
echo " " >>~/.bashrc
echo . $HOME/.asdf/asdf.sh >>~/.bashrc
echo . $HOME/.asdf/completions/asdf.bash >>~/.bashrc

exec $SHELL -l
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest #これmisskeyユーザーでやらないとダメでは？　あとバージョン指定したい
asdf global nodejs latest

# misskeyのインストール
sudo su - misskey

cd ~
git clone https://github.com/usuyuki/usuyukey.git
cd usuyukey
git submodule update --init
pnpm install

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"

# この後手動でやること
# ぽすぐれユーザー作成
# yarn build & migration
# misskeyデーモン化
