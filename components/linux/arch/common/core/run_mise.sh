jobName="Install From mise(asdf)"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# pluginsの追加
mise plugin add rust
# mise plugin add python # pythonは不要っぽい？
mise plugin add golang https://github.com/kennyp/asdf-golang.git
mise plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
mise plugin add lazydocker https://github.com/comdotlinux/asdf-lazydocker.git
mise plugin add php https://github.com/asdf-community/asdf-php.git
mise plugin add deno https://github.com/asdf-community/asdf-deno.git
mise plugin add bun
mise plugin add flutter
mise plugin add zig https://github.com/asdf-community/asdf-zig.git

#
# 依存解消
#
# いろいろな言語
sudo pacman -S unzip
# python
sudo pacman -S tk

#php
sudo pacman -S re2c autoconf postgresql-libs libzip gd oniguruma libxml2

#
# インストール
# .tool-versionがあるのでそれを元にいい感じにしてくれる
#
echo "mise install"
mise install
# ↓でインストールしたものが使えるようになる←ならない
# /usr/bin/mise activate zsh

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
