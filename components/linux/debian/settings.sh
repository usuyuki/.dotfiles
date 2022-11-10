#!/bin/bash -eu

# user追加

#タイムゾーン
sudo timedatectl set-timezone 'Asia/Tokyo'

# visudoでのエディターをvimに変更
sudo update-alternatives --set editor /usr/bin/vim.basic
