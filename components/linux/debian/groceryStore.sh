#!/bin/bash -eu
# いつも使うソフトウェアのインストール
jobName="Install essential tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# ミラーを国内に変更(国外サーバーの場合はこれ消す)
sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

# aptだけで行けるやつ
sudo apt install -y make htop peco ripgrep make software-properties-common
# software-properties-commonはapt-add-repositoryを使うために必要

# neovimインストール
sh ~/.dotfiles/components/linux/debian/installer/neovim.sh

# asdfで各種ツールインストール
echo "止まったらctrl +d で抜けて進めます"
sh ~/.dotfiles/components/linux/debian/installer/asdf.sh
sh ~/.dotfiles/components/linux/debian/installer/lang_installer.sh

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"