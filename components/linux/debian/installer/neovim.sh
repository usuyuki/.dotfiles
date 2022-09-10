#!/bin/bash -eu
# neovimの準備
jobName="Setup neovim"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt -y install neovim

#packerインストール
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"