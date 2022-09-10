#!/bin/bash -eu
# いつも使うソフトウェアのインストール
jobName="Install essential tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# ミラーを国内に変更(国外サーバーの場合はこれ消す)
sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

# aptだけで行けるやつ
sudo apt install -y make htop peco ripgrep 

# neovimインストール
sh ~/.dotfiles/components/linux/debian/installer/neovim.sh

# neovimインストール
sh ~/.dotfiles/components/linux/debian/installer/asdf.sh

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"