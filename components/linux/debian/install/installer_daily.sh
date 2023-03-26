#!/bin/bash -eu
# いつも使うソフトウェアのインストール
jobName="Install essential tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"

# aptだけで行けるやつ
sudo apt install -y make wget curl llvm build-essential htop peco ripgrep make software-properties-common tree fd-find
# software-properties-commonはapt-add-repositoryを使うために必要

sh ./packages/ranger.sh
sh ./packages/delta.sh
sh ./packages/zellij.sh
sh ./packages/neovim/neovim.sh
sh ./packages/poetry.sh

sh ./packages/asdf/asdf.sh


sudo apt autoremove -y

# asdfで各種ツールインストール
echo "止まったらctrl +d で抜けて進めます"
sh ~/.dotfiles/components/linux/debian/installer/asdf.sh



echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"
