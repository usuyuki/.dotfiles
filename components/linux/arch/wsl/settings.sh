#
# ターミナルで日本語を打っても<ffffffff><ffffffff><ffffffff>にならない設定
#

## -----
#locale-genで[error] cannot open locale definition file `ja_JP': No such file or directoryになるので、glibcから必要なファイルを奪い取る処理
glibc_version=$(pacman -Q glibc | awk '{print $2}')
mkdir -p ~/glibc
cp /var/cache/pacman/pkg/glibc-${glibc_version}-x86_64.pkg.tar.zst ~/glibc/
tar xvf ~/glibc/glibc-${glibc_version}-x86_64.pkg.tar.zst -C ~/glibc
sudo cp ~/glibc/usr/share/i18n/locales/ja_JP /usr/share/i18n/locales/
rm -rf ~/glibc

## -----



# コメントアウト外す
sudo sed -i '/^#ja_JP.UTF-8 UTF-8/s/^#//' /etc/locale.gen
# ロケール生成
sudo locale-gen

# ロケール設定
echo "export LANG=ja_JP.UTF-8" >>~/.zshrc

#再起動必要
echo "ターミナルの再起動が必要です。"
