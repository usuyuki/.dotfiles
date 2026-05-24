#!/bin/bash

# ホスト名を取得
HOSTNAME=$(hostname)

# OS判定 連想配列だと一部の環境で動かないので条件分岐に変更
OS_NAME="$(uname -s)"
case "$OS_NAME" in
Darwin*) OS="macOS" ;;
Linux*) OS="Linux" ;;
CYGWIN* | MINGW32* | MSYS*) OS="Windows" ;;
*) OS="Unknown" ;;
esac

# Linuxのときはディストリビューションも判定
if [ "$OS" == "Linux" ] && [ -f /etc/os-release ]; then
	. /etc/os-release
	DISTRO=$NAME
fi

# 共通の処理
echo "==================================================="
echo "OS: $OS | DISTRO: $DISTRO | HOSTNAME🏠: $HOSTNAME"
echo "==================================================="
echo "Update .dotfiles"
# dotfiles更新
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/independency/update_dotfiles.sh)"
echo "==================================================="

# OSとディストリビューション, ホスト名に基づいて処理を分岐
case $OS in
macOS)
	echo "brew系のアップデートを実行します."
	brew update
	brew upgrade
	;;
Linux)
	# ディストリビューションに基づいて処理を分岐
	case $DISTRO in
	Ubuntu)
		echo "Ubuntu"
		case $HOSTNAME in
		kanata)
			echo "sudoが使えないのでbrewで更新します."
			brew update
			brew upgrade
			;;
		*)
			echo "sudoが使えるのでaptで更新します."
			sudo apt update -y
			sudo apt full-upgrade -y
			;;
		esac
		;;
	"Arch Linux")
		echo "rustup, pacman, yayを実行します."
		# rustcの更新することでmiseに必要な依存を解消する
		rustup update
		# sudo pacman -Syu # yay側の内部でpacman -Syuも実行されるので不要
		# 3世代前まで残しておく。ビルドでpython依存あるとmise使ってバージョン違いでコケるので意図的にPATHを消す
		PATH=/usr/bin:$PATH yay -Syu --diffmenu=false
		# パッケージのキャッシュで一番新しい3つのバージョンを残して後を全て削除
		paccache -r
		# アンインストールしたパッケージのキャッシュを全て削除
		paccache -ruk0
		;;
	EndeavourOS)
		echo "rustup, pacman, yay, eos-updateを実行します."
		# rustcの更新することでmiseに必要な依存を解消する
		rustup update
		# sudo pacman -Syu # yay側の内部でpacman -Syuも実行されるので不要
		# yay -Syu --diffmenu=false

		# EndeavourOS側でアプデを走らせる
		eos-update
		# AURは別で更新
		yay -Syu --diffmenu=false
		# アンインストールしたパッケージのキャッシュを全て削除
		paccache -ruk0
		# インストール済みのソフトウェアのキャッシュは2世代前まで残す
		paccache -r -k2
		;;
	*)
		echo "usuyuki/.dotfilesがサポートしていないディストリビューションです."
		;;
	esac
	;;
Windows)
	echo "Windowsは未整備"
	;;
*)
	echo "Unknown OS."
	;;
esac
