#!/bin/bash -eu
# シンボリックリンク貼る
jobName="Create symbolic link"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"

# bash系
ln -fnsv ~/.dotfiles/config/bash/.bash_aliases ~/.bash_aliases
ln -fnsv ~/.dotfiles/config/bash/.bash_profile ~/.bash_profile

# 元のbashrcを退避(日付付きの名前にしておくことで2回このスクリプトを走らせても最初のが辿れるようにする)
# と思ったが、環境の違いを吸いきれないので廃止(必要なら >> ~/.bashrcで渡す)
# mv ~/.bashrc ~/.bashrc_old_`date '+%Y_%m_%d_%H_%M_%S'`
#ln -fnsv ~/.dotfiles/config/bash/.bashrc ~/.bashrc


# git系
ln -fnsv ~/.dotfiles/config/git/gitconfig ~/.gitconfig

# vim系
ln -fnsv ~/.dotfiles/config/vim/.vimrc ~/.vimrc

#asdf系
ln -fnsv ~/.dotfiles/config/asdf/.tool-versions ~/.tool-versions
ln -fnsv ~/.dotfiles/config/asdf/.asdfrc ~/.asdfrc

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"
