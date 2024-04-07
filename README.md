# dotfiles

うすゆきてきとうかんきょう

NeoVim の設定は別リポジトリに

## Clone

コンテナなど一時的に使う環境は# スタートにあるコマンドをそのまま実行して良いが、dotfiles を更新する想定の場合は

```bash
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"
git clone git@github.com:usuyuki/.dotfiles.git ~/.dotfiles
```

で clone する

## 更新したい

```bash
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/update_dotfiles.sh)"
または
df-up
```

## シンボリックリンクだけ貼る

```bash
sh ~/.dotfiles/components/linux/common/link.sh
```

## GitHub との接続の初期設定したい

```bash
sh ~/.dotfiles/components/linux/common/github_initial_setting.sh
```

# 概要

## 構成

- components：共通で使うもの
- config：各種設定ファイル
- setup：OS や利用ケースごとのセットアップ

# 注意 ⚠

- eval で読むシェルスクリプトはコメントアウトすると解析できなくなるので注意。
- sh での実行なのでパスをしっかり指定すること
- →wget や curl で取ってくる場合は(cd ~/ && curl)のようにサブシェルで実行すること

# 初期導入 🍮

- 🟢→現在でもメンテナンスがされている
- 🟡→以前はメンテナンスがされていたが、現在はメンテナンスされていない
- ❌→未完成または不十分

## デスクトップ環境(実機日常用途) 🏡

### EndeavourOS(Arch Linux) 🟢

i3 の指定とインストール後の各種更新が終わった想定(Firefox も入れる)であり, 素のArchと異なり最初からsudoなども入っている前提.

画面の調整は 4kモニタと2kモニタのマルチなのでXresouceでdpiを140にして、xrandrで2kモニタを4kモニタとすることでHiDPI、Windowsで言うところの拡大率、Macで言うところのRetina Display対応をしている  
(Xprofileにこのことを書きたいが、コメントアウトできないっぽいでのここに書く)

<img width="430" alt="image" src="https://github.com/usuyuki/.dotfiles/assets/63891531/12694f4a-8acd-4fa2-bc9f-64d7e45b1890">

```bash
# dotfiles導入
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"
git clone git@github.com:usuyuki/.dotfiles.git ~/.dotfiles

# セットアップ
sh ~/.dotfiles/setup/desktop/endeavour_os/pre_setup.sh
logout
sh ~/.dotfiles/setup/desktop/endeavour_os/setup.sh
# mozkなどの兼ね合いでログインし直す
logout


# dotfiles-secret導入
git clone git@github.com:usuyuki/.dotfiles-secret.git ~/.dotfiles-secret
sh ~/.dotfiles-secret/script/git-clone.sh
sh ~/.dotfiles-secret/script/link.sh
```

### Desktop no-privileged Ubuntu 🟡

sudoが使えないUbuntu Desktop環境. LinuxBrewを用いる.

※LinuxBrew導入までが未整備

```
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/desktop/no-privileged-ubuntu/setup.sh
```

### Windows 🟢

[windows](setup/desktop/windows/README.md)

### Mac 🟢

```bash
# dotfiles導入
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"
git clone git@github.com:usuyuki/.dotfiles.git ~/.dotfiles

# セットアップ
sh ~/.dotfiles/setup/desktop/mac/setup.sh

# dotfiles-secret導入
git clone git@github.com:usuyuki/.dotfiles-secret.git ~/.dotfiles-secret
sh ~/.dotfiles-secret/script/git-clone.sh
sh ~/.dotfiles-secret/script/link.sh
```

## WSL用途 🪴

### WSL Arch Linux 🟢

#### dotfiles導入

```bash
# gitとSSH鍵交換するための準備
sudo pacman -S openssh git
# dotfiles導入
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"
git clone git@github.com:usuyuki/.dotfiles.git ~/.dotfiles

# セットアップ
sh ~/.dotfiles/setup/wsl/arch/pre_setup.sh
logout
sh ~/.dotfiles/setup/wsl/arch/setup.sh
logout


# dotfiles-secret導入
git clone git@github.com:usuyuki/.dotfiles-secret.git ~/.dotfiles-secret
sh ~/.dotfiles-secret/script/git-clone.sh && sh ~/.dotfiles-secret/script/link.sh

# 日本語は<ffff>に文字化けするので、下記スクリプトを見つつ対応(自前でglibcの中身を拾ってコピーする必要がある)
sh ~/.dotfiles/setup/wsl/arch/ja_jp.sh

```

### WSL Ubuntu 🟡

```bash
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/wsl/ubuntu/setup.sh
```

#### 既知の不具合

- asdf インストール前の必要ツールのインストールで使う apt install の対話シェルをうまく自動化できてない（一方はうまくいってるが、もう一方がうまくいかない)
- asdf で node がうまくインストールされない(再実行するとうまくいく)
- asdf で rust がうまくインストールされない(原因不明)
- asdf で php がインストールされるが composer や cs-fixer がインストールされない、PHP もそもそも入ってないかも？

> 普段使いで使う時の Ubuntu の設定

## サーバー用途 📡

GUI環境がない想定

### Ubuntu Server X86 ❌

未完成であるが、そもそもコンテナが基本になって不要になったという理由も大きい。

> サーバー用で使う時の Ubuntu の設定

```bash
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/server/ubuntu-x86/setup.sh
```

nginx 設定

```bash
sh ~/.dotfiles/components/linux/common/add_nginx_conf.sh
```

### Ubuntu Server Arm 🟡

Raspberry PiでUbuntu Serverするとき用

```bash
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)" && sh ~/.dotfiles/setup/server/ubuntu-arm/setup.sh
```

## Docker 🐋 ❌

メンテ不足

[docker](setup/docker/setup.md)

# Dockerを用いたお試し・検証

## 設定が間違ってないか確認したい

```bash
dc up -d
dc exec ubuntu bash
sh ~/.dotfiles/setup/docker/setup.sh
exec $SHELL -l
sh ~/.dotfiles/components/linux/debian/getApplication/packages/asdf/lang_installer.sh
```

exec がうまく効かないので……

でインストール手順を試す

- ここが~/.dotfiles にマウントされている
- docker だけど sudo できる一般ユーザー usuyuki が存在
- sytstemctl 系だめ
- echo 系もだめ

### 作り直し

```bash
dc down && dc up -d && dc exec ubuntu bash
sh ~/.dotfiles/setup/ubuntu_daily/setup.sh
```
