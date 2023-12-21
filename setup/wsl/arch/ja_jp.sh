# 日本語は<ffff>に文字化けするので、下記スクリプトを見つつ対応(自前でglibcの中身を拾ってコピーする必要がある)
# https://zenn.dev/dozo/articles/30b0a292246f92#locale%E8%A8%AD%E5%AE%9A%E3%81%AB%E5%A4%B1%E6%95%97%E3%81%99%E3%82%8B
sudo pacman -S glibc
cd 
mkdir glibc
# glibcのバージョンに合わせる
cp /var/cache/pacman/pkg/glibc-2.35-2-x86_64.pkg.tar.zst ./
tar xvf ./glibc-2.35-2-x86_64.pkg.tar.zst -C ./glibc
cd glibc
sudo cp usr/share/i18n/locales/ja_JP /usr/share/i18n/locales/
sudo locale-gen
