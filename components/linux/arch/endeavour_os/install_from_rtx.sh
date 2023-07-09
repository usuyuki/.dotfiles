jobName="Install From rtx(asdf)"
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
(git clone https://aur.archlinux.org/rtx.git && cd rtx && makepkg -si)
# bash用
echo 'eval "$(~/bin/rtx activate bash)"' >>~/.bashrc
# fish用
echo 'rtx activate fish | source' >>~/.config/fish/config.fish

echo "Install asdf plugin"
# pluginsの追加
# rust, pythonは不要
rtx plugin add golang https://github.com/kennyp/asdf-golang.git
rtx plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
rtx plugin add lazydocker https://github.com/comdotlinux/asdf-lazydocker.git
rtx plugin add php https://github.com/asdf-community/asdf-php.git

# .tool-versionがあるのでそれを下に指定バージョンをインストール
rtx install

# node関連
corepack enable
asdf reshim nodejs

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
