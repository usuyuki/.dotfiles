jobName="後の構成に必要な必須ソフトウェアの設定やインストール"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"
# pacman管理のアップデートとアップグレード
sudo pacman -Syyu
yay -Syyu

echo "bash_aliasesの読み込み設定"
aliasLoad="
# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
. ~/.bash_aliases                                                                                                                                                          
fi 
"
# ubuntuと違ってbash_aliases読み込みの項目がないのでbashrcに上書き
echo "$aliasLoad" >>~/.bashrc

#
# 日本語入力できるようにする(設定はsettings.shにて)
#
echo "日本語環境のためのxprofileの設定"

sudo pacman -S fcitx-im fcitx-mozc
jaConfig="
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
"

# xprofile作成
echo "$jaConfig" >~/.xprofile

echo "ログインし直すことで日本語入力環境が有効になります。"

#
# rtx自体のインストール
#
echo "Install rtx"
# 種々の言語が依存しがちなので、先に言語のバージョン管理環境を整える
# rtxがrust依存なのでrustだけは先に入れる
sudo pacman -S rustup
rustup default stable
# rtxの導入(rustでビルドされるっぽい)
yay -S rtx
# bash用
echo 'eval "$(~/bin/rtx activate bash)"' >>~/.bashrc
# fish用はconfig.fishに直書きなのでconifで管理
#
# bashからzshへ変更
#
sudo pacman -S zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting
chsh -s /bin/zsh

#
# bashからfishへ変更
#
# fishをデフォルトのシェルにするのはArchでは非推奨らしいので、インタラクティブシェルとして使う
# sudo pacman -S zsh fish fisher
# chsh -s /bin/fish ←デフォルトのshellにする場合
# fishBoot="
# # fishをインタラクティブシェルとして使う
# if [ -z "$BASH_EXECUTION_STRING" ]; then exec fish; fi
# "
#bashrcに追記
# echo "$fishBoot" >>~/.bashrc

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
