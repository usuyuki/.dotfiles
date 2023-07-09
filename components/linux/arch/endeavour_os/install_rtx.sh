jobName="Install rtx"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

#
# rtx自体のインストール
#
echo "Install rtx"
# 種々の言語が依存しがちなので、先に言語のバージョン管理環境を整える
# rtxがrust依存なのでrustだけは先に入れる
sudo pacman -S rustup
rustup default stable
# rtxの導入(rustでビルドされるっぽい)
yay -S rtx
# bash用
echo 'eval "$(~/bin/rtx activate bash)"' >>~/.bashrc
# fish用はconfig.fishに直書きなのでconifで管理

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
