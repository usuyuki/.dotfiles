#!/bin/bash -eu
# asdfでインストール
# https://github.com/asdf-vm/asdf-plugins
sh ~/.dotfiles/components/linux/debian/installer/asdf/asdf_node.sh
sh ~/.dotfiles/components/linux/debian/installer/asdf/asdf_go.sh
sh ~/.dotfiles/components/linux/debian/installer/asdf/asdf_rust.sh
sh ~/.dotfiles/components/linux/debian/installer/asdf/asdf_python.sh
# インストールでcommnad not foundになり、GitHubのビルドバッチもエラーになっていることから、おそらく壊れている
# sh ~/.dotfiles/components/linux/debian/installer/asdf/asdf_php.sh
# 動くが今は使わないので入れていない
# sh ~/.dotfiles/components/linux/debian/installer/asdf/asdf_ruby.sh
