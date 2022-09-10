#!/bin/bash -eu
# シンボリックリンク貼る
jobName="Create symbolic link"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"

# bash系
ln -fnsv ~/.dotfiles/config/bash/.bash_aliases ~/.bash_aliases
ln -fnsv ~/.dotfiles/config/bash/.bash_profile ~/.bash_profile
ln -fnsv ~/.dotfiles/config/bash/.bashrc ~/.bashrc


# git系
ln -fnsv ~/.dotfiles/config/git/gitconfig ~/.gitconfig

# neovim系
mkdir ~/.config
ln -fnsv ~/.dotfiles/config/neovim ~/.config/nvim

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"