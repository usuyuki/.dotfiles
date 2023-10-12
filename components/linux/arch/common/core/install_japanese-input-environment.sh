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
