#!/bin/bash -eu
# apt-add-repositoryだと404エラーで怒られるので
jobName="Setup neovim"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
# 現状直接インストールもバイナリで死ぬし、aptも古いので方法なし。一番マシなのがこれ
sudo apt -y install neovim
#packerインストール
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"