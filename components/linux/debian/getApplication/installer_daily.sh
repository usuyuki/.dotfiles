#!/bin/bash -eu
# いつも使うソフトウェアのインストール
jobName="Install essential tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"

# aptだけで行けるやつ
sudo apt update -y
sudo apt full-upgrade -y

# 対話型を飛ばすためにexpectを入れている
sudo apt install -y make wget curl make tree expect
# software-properties-commonはapt-add-repositoryを使うために必要
sudo apt install -y software-properties-common 
sudo apt install -y build-essential llvm 

sh ~/.dotfiles/components/linux/debian/getApplication/packages/fd.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/ripgrep.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/htop.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/peco.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/ranger.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/delta.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/zellij.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/neovim/astroNvim.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/poetry.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/asdf.sh


sudo apt autoremove -y

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"
