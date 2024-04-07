#!/bin/bash -eu
# シンボリックリンク貼る
jobName="Create symbolic link"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# bash系
ln -fnsv ~/.dotfiles/config/aliases ~/.bash_aliases
ln -fnsv ~/.dotfiles/config/bash/.bash_profile ~/.bash_profile

# zsh系
# これどうにかしたい
# aliasesはbash_aliasesを流用
# ln -fnsv ~/.dotfiles/config/zsh/zprofile ~/.zprofile

# 元のbashrcを退避(日付付きの名前にしておくことで2回このスクリプトを走らせても最初のが辿れるようにする)
# と思ったが、環境の違いを吸いきれないので廃止(必要なら >> ~/.bashrcで渡す)
# mv ~/.bashrc ~/.bashrc_old_`date '+%Y_%m_%d_%H_%M_%S'`
#ln -fnsv ~/.dotfiles/config/bash/.bashrc ~/.bashrc

# fish系
# なければディレクトリ作る
mkdir -p ~/.config/fish
ln -fnsv ~/.dotfiles/config/aliases ~/.config/fish/aliases.fish
ln -fnsv ~/.dotfiles/config/fish/config.fish ~/.config/fish/config.fish

# git系
ln -fnsv ~/.dotfiles/config/git/gitconfig ~/.gitconfig
mkdir -p ~/.config/git
ln -fnsv ~/.dotfiles/config/git/gitignore ~/.config/git/ignore

# vim系
ln -fnsv ~/.dotfiles/config/vim/.vimrc ~/.vimrc

#asdf系
ln -fnsv ~/.dotfiles/config/asdf/.tool-versions ~/.tool-versions
ln -fnsv ~/.dotfiles/config/asdf/.asdfrc ~/.asdfrc

#zellij
mkdir -p ~/.config/zellij
ln -fnsv ~/.dotfiles/config/zellij/config.kdl ~/.config/zellij/config.kdl

#alacritty
mkdir -p ~/.config/alacritty
ln -fnsv ~/.dotfiles/config/alacritty/linux/alacritty.toml ~/.config/alacritty/alacritty.toml

#i3wm
mkdir -p ~/.config/i3
ln -fnsv ~/.dotfiles/config/i3/config ~/.config/i3/config
ln -fnsv ~/.dotfiles/config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf

# redshift
ln -fnsv ~/.dotfiles/config/redshift/redshift.conf ~/.config/redshift.conf

# starship
ln -fnsv ~/.dotfiles/config/starship/starship.toml ~/.config/starship.toml
# xresouces
ln -fnsv ~/.dotfiles/config/Xresources/Xresources ~/.Xresources

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
