# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## リポジトリ概要

複数OS・環境向けのdotfiles管理リポジトリ。設定ファイルをシンボリックリンクでホームディレクトリに展開する構成。

## 主要コマンド

### セットアップ・初期化

```bash
# dotfiles導入（どの環境でも共通の第一歩）
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/init.sh)"

# シンボリックリンク貼り直し
sh ~/.dotfiles/components/linux/common/link.sh

# Mac セットアップ
sh ~/.dotfiles/setup/desktop/mac/setup.sh

# Brewfileからインストール
brew bundle install --file=~/.dotfiles/config/brew/Brewfile

# Brewfileを現状から生成
brew bundle dump --global -f
```

### 更新

```bash
# dotfiles更新（エイリアス）
df-up
# または
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/update_dotfiles.sh)"

# パッケージ更新（OS判定あり: macOS=brew, Ubuntu=apt, Arch=yay）
d-up
# または
bash ~/.dotfiles/components/multi/update.sh
```

## ディレクトリ構成

- `config/` — 各ツールの設定ファイル本体（シンボリックリンクのリンク先）
- `components/` — 再利用可能なセットアップスクリプト群
  - `components/linux/common/link.sh` — シンボリックリンクを一括作成するメインスクリプト
  - `components/linux/arch/` — Arch Linux / EndeavourOS向けコンポーネント
  - `components/linux/debian/` — Debian / Ubuntu向けコンポーネント（asdf経由）
  - `components/multi/update.sh` — OS判定して適切なパッケージマネージャで更新
- `setup/` — OS・用途ごとのセットアップスクリプト
  - `setup/desktop/mac/setup.sh` — Mac用（Homebrew + mise）
  - `setup/desktop/endeavour_os/` — EndeavourOS用
  - `setup/wsl/arch/` — WSL Arch Linux用
  - `setup/lxc/` — LXCコンテナ用

## シンボリックリンクの対応

`components/linux/common/link.sh`が管理するリンク先：

| dotfilesパス | リンク先 |
|---|---|
| `config/aliases` | `~/.bash_aliases` |
| `config/git/gitconfig` | `~/.gitconfig` |
| `config/git/gitignore` | `~/.config/git/ignore` |
| `config/vim/.vimrc` | `~/.vimrc` |
| `config/starship/starship.toml` | `~/.config/starship.toml` |
| `config/ghostty/config` | `~/.config/ghostty/config` |
| `config/claude/settings.json` | `~/.claude/settings.json` |
| `config/claude/CLAUDE.md` | `~/.claude/CLAUDE.md` |
| `config/i3/config` | `~/.config/i3/config` |

## 重要な注意点

- `eval`で読むシェルスクリプトにコメントアウトを入れると解析できなくなるため禁止
- `sh`での実行なので、スクリプト内でパスは絶対パスで指定する
- `wget`や`curl`で取得する場合は`(cd ~/ && curl ...)` のようにサブシェルで実行する
- NeoVimの設定は別リポジトリ（`~/.config/nvim`）で管理
- `dotfiles-secret`リポジトリに機密設定が分離されている

## パッケージ管理

- **Mac**: Homebrew（`config/brew/Brewfile`で管理）+ mise（言語バージョン管理）
- **Arch Linux**: pacman + yay（AUR）
- **Ubuntu**: apt または Linuxbrew（特権なし環境）
- **言語バージョン管理**: mise（旧asdf。`config/asdf/.tool-versions`参照）
