#!/bin/bash -eu
# 最低限のインストール
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoremove
sudo apt -y install build-essential git curl

# dotfilesのインストール
eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/init.sh)"
#ここからこのリポジトリの中身が使える

# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/debian/link.sh

# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/groceryStore.sh




echo "■■■■■■■■■■"
echo "やることリスト";
echo "- nvimで:PackerInstall";

#シェルの再起動
exec $SHELL -l
