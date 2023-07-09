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

# .tool-versionがあるのでそれを下に指定バージョンをインストール
echo "rtx install"
rtx install

# node関連
corepack enable
rtx reshim nodejs

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
