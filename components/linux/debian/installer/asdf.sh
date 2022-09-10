#!/bin/bash -eu
# asdfでバージョン管理する
jobName="Setup asdf"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
sudo apt install -y curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2



#nodeインストール
sudo apt -y install dirmngr gpg gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs lts
asdf global nodejs lts

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"