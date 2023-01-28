#!/bin/bash -eu
# いつも使うソフトウェアのインストール
jobName="Install essential tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# ミラーを国内に変更(国外サーバーの場合はこれ消す)
sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list

# aptだけで行けるやつ
sudo apt install -y make wget curl llvm lbuild-essential htop peco ripgrep make software-properties-common tree fd-find
# software-properties-commonはapt-add-repositoryを使うために必要

# ranger系
sudo apt install -y ranger w3m lynx highlight atool mediainfo xpdf caca-utils


# asdfでpython入れるために必要なもの
sudo apt install -y libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev ibncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev 

sudo apt autoremove -y

# neovimインストール
sh ~/.dotfiles/components/linux/debian/installer/neovim.sh

# asdfで各種ツールインストール
echo "止まったらctrl +d で抜けて進めます"
sh ~/.dotfiles/components/linux/debian/installer/asdf.sh
sh ~/.dotfiles/components/linux/debian/installer/lang_installer.sh


# pythonの仮想環境ツールpoetryのインストール
curl -sSL https://install.python-poetry.org | python3 -
poetry config virtualenvs.in-project true


echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"
