#!/bin/bash -eu
# asdfでインストール
# https://github.com/asdf-vm/asdf-plugins
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/lang/asdf_node.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/lang/asdf_go.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/lang/asdf_rust.sh
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/lang/asdf_python.sh
# インストールでcommnad not foundになり、GitHubのビルドバッチもエラーになっていることから、おそらく壊れている
# sh ~/.dotfiles/components/linux/deb/ian/installer/packages/asdf/lang/asdf_php.sh

# 動くが今は使わないので入れていない
# sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/lang/asdf_ruby.sh
echo "****************************"
echo "バージョンチェック"
node -v
go version
rustc --version
rustup -V
cargo -V
python -V

echo "****************************"
echo "終了後に実行すること"
echo "rebash"
echo "corepack enable"
echo "asdf reshim nodejs"
echo "****************************"
