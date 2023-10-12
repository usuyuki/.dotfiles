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
# bash用(zsh用は別途入る)
echo 'eval "$(~/bin/rtx activate bash)"' >>~/.bashrc
