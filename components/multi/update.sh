#!/bin/bash

# ホスト名を取得
HOSTNAME=$(hostname)

# OS判定
OS_NAME="$(uname -s)"
declare -A OS_MAP=(["Darwin"]="macOS" ["Linux"]="Linux" ["CYGWIN"]="Windows" ["MINGW32"]="Windows" ["MSYS"]="Windows")

for key in "${!OS_MAP[@]}"; do
	if [[ $OS_NAME == $key* ]]; then
		OS=${OS_MAP[$key]}
	fi
done

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
