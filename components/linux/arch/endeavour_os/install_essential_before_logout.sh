jobName="後の構成に必要な必須ソフトウェアの設定やインストール"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"
# pacman管理のアップデートとアップグレード
sudo pacman -Syyu

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
# bashからzshへ変更
#
sudo pacman -S zsh
chsh -s /bin/zsh
echo "ログアウトして再ログインする"
# zshrcが生成されてからでないと以降が積むのでここで一旦終わらせる
logout
