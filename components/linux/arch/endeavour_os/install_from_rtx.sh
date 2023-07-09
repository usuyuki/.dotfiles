jobName="Install From rtx(asdf)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# pluginsの追加
rtx plugin add rust
rtx plugin add python
rtx plugin add golang https://github.com/kennyp/asdf-golang.git
rtx plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
rtx plugin add lazydocker https://github.com/comdotlinux/asdf-lazydocker.git
rtx plugin add php https://github.com/asdf-community/asdf-php.git

#
# 依存解消
#
# python
sudo pacman -S tk

#php
sudo pacman -S re2c autoconf postgresql-libs libzip

#
# インストール
# .tool-versionがあるのでそれを下に指定バージョンをインストール
#
echo "rtx install"
rtx install
# ↓でインストールしたものが使えるようになる
/usr/bin/rtx activate zsh

#
# node関連
#
corepack enable
rtx reshim nodejs

#
# pathの設定→不要っぽい？
#
# go
# export GOPATH=$HOME/goi
# export PATH=$PATH:$GOPATH/bin
#
# export PATH=$PATH:/usr/local/go/bin
#
# echo $HOME/.asdf/asdf.sh >>~/.bashrc
# echo PATH=$PATH:$GOPATH/bin >>~/.bashrc
# echo PATH=$PATH:$GOPATH/bin >>~/.bashrc
# echo $HOME/.asdf/asdf.sh >>~/.zshrc
# echo PATH=$PATH:$GOPATH/bin >>~/.zshrc
# echo PATH=$PATH:$GOPATH/bin >>~/.zshrc

echo "****************************"
echo "バージョンチェック"
node -v
go version
rustc --version
rustup -V
cargo -V
python -V
php -v
composer -v

echo "****************************"
echo "終了後に実行すること"
echo "rebash"
echo "****************************"

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
