jobName="Install From rtx(asdf)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

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
