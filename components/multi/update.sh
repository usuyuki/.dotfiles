#!/bin/bash

# ホスト名を取得
HOSTNAME=$(hostname)

# OS判定 連想配列だと一部の環境で動かないので条件分岐に変更
OS_NAME="$(uname -s)"
if [[ $OS_NAME == "Darwin"* ]]; then
	OS="macOS"
elif [[ $OS_NAME == "Linux"* ]]; then
	OS="Linux"
elif [[ $OS_NAME == "CYGWIN"* ]] || [[ $OS_NAME == "MINGW32"* ]] || [[ $OS_NAME == "MSYS"* ]]; then
	OS="Windows"
fi

# Linuxのときはディストリビューションも判定
if [ "$OS" == "Linux" ] && [ -f /etc/os-release ]; then
	. /etc/os-release
	DISTRO=$NAME
fi

# 共通の処理
echo "OS: $OS | DISTRO: $DISTRO | HOSTNAME🏠: $HOSTNAME"
df-up

# OSとディストリビューション, ホスト名に基づいて処理を分岐
case $OS in
macOS)
	echo "brew系のアップデートを実行します."
	brew update
	brew upgrade
	;;
Linux)
	echo "Linux"
	echo "Distribution: $DISTRO"
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
	EndeavourOS)
		echo "pacman, yay, eos-updateを実行します."
		# sudo pacman -Syu # yay側の内部でpacman -Syuも実行されるので不要
		# 3世代前まで残しておく
		yay -Syu --nodiffmenu
		# パッケージのキャッシュで一番新しい3つのバージョンを残して後を全て削除
		paccache -r
		# アンインストールしたパッケージのキャッシュを全て削除
		paccache -ruk0
		eos-update
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
