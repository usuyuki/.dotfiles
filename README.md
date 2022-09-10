# dotfiles

うすゆきてきとうかんきょう

まだとちゅう

## 更新したい

```
eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/update_dotfiles.sh)"
```

## 設定が間違ってないか確認したい

```
dc up -d
dc exec ubuntu bash
```

にてインストール手順を試す(ここがマウントされている)

```
dc down && dc up -d
```

# 概要

## 構成

- components：共通で使うもの
- config：各種設定ファイル
- setup：OS や利用ケースごとのセットアップ

## とても参考になる dotfiles 🥳

https://github.com/s3igo/dotfiles

# すたーと 🍮

## 🪟

[windows](setup/win/setup.md)

> 普段使いで使う時の Windows の設定
> 📝PowerShell から Chocolatey 経由でぶちこむスタイル

## 🐧

### ubuntu_daily

```
eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/setup/ubuntu_daily/setup.sh)"
```

> 普段使いで使う時の Ubuntu の設定

### ubuntu_hosting

> サーバー用で使う時の Ubuntu の設定

```
eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/setup/ubuntu_hosting/setup.sh)"
```

## 🐋

[docker](setup/ubuntu_hosting/setup.md)
