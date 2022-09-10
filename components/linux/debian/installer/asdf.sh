#!/bin/bash -eu
# asdfでバージョン管理する
jobName="Setup asdf"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

# bashrcに追記
echo " " >> ~/.bashrc
echo . $HOME/.asdf/asdf.sh >> ~/.bashrc
echo . $HOME/.asdf/completions/asdf.bash >> ~/.bashrc

# bashrc再読み込み
exec $SHELL -l

echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "■■■■■■■■■■"