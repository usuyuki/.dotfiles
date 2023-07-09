jobName="Install From rtx(asdf)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# pluginsの追加
# rust, pythonは不要
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add lazydocker https://github.com/comdotlinux/asdf-lazydocker.git
asdf plugin-add php https://github.com/asdf-community/asdf-php.git

# .tool-versionがあるのでそれを下に指定バージョンをインストール
rtx install

# node関連
corepack enable

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
echo "corepack enable"
echo "asdf reshim nodejs"
echo "****************************"

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
