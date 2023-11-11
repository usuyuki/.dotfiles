jobName="Install From rtx(asdf)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# pluginsの追加
rtx plugin add rust
# rtx plugin add python # pythonは不要っぽい？
rtx plugin add golang https://github.com/kennyp/asdf-golang.git
rtx plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
rtx plugin add lazydocker https://github.com/comdotlinux/asdf-lazydocker.git
rtx plugin add php https://github.com/asdf-community/asdf-php.git
rtx plugin add deno https://github.com/asdf-community/asdf-deno.git
rtx plugin add bun
rtx plugin add flutter
rtx plugin add zig https://github.com/asdf-community/asdf-zig.git

#
# 依存解消
#
# python
sudo pacman -S tk

#php
sudo pacman -S re2c autoconf postgresql-libs libzip gd oniguruma

#
# インストール
# .tool-versionがあるのでそれを元にいい感じにしてくれる
#
echo "rtx install"
rtx install
# ↓でインストールしたものが使えるようになる←ならない
# /usr/bin/rtx activate zsh

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
