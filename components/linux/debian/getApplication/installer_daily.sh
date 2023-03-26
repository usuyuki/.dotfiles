#!/bin/bash -eu
# いつも使うソフトウェアのインストール
jobName="Install essential tools"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"

# 対話型を飛ばすためにexpectを入れている(apt updateで聞かれる前に必要なためここに配備)
echo "expectのインストール-🎁→🗃→🎉"
sudo apt install -y expect

echo "⛩ apt update ⛩"
sudo apt update -y
# expectが2度存在するが、どちらも必要
expect -c "
set timeout 5
expect \"Geographic area:\"
send \"6\n\"
expect \"$\"
exit 0
"
expect -c "
set timeout 5
expect \"Time zone:\"
send \"79\n\"
expect \"$\"
exit 0
"

echo "⛩ apt full-upgrade ⛩"
sudo apt full-upgrade -y

# 最低限レベルのもの(curlとgitはこれを実行している時点で存在が確定しているので省略)
echo "🎁 install essetial 🎁"
sudo apt install -y make wget curl make tree 

# software-properties-commonはapt-add-repositoryを使うために必要
echo "software-properties-commonのインストール-🎁→🗃→🎉"
sudo apt install -y software-properties-common 

echo "🎁 install build-tool 🎁"
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
