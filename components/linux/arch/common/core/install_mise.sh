#
# mise自体のインストール
#
echo "Install mise"
# 種々の言語が依存しがちなので、先に言語のバージョン管理環境を整える
# miseがrust依存なのでrustだけは先に入れる
sudo pacman -S rustup
rustup default stable
# miseの導入(rustでビルドされるっぽい)
yay -S mise
# bash用(zsh用は別途入る)
echo 'eval "$(~/bin/mise activate bash)"' >>~/.bashrc
