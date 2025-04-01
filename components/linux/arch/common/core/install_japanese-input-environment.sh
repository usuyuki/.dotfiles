#
# 日本語入力できるようにする(設定はsettings.shにて)
#
echo "日本語環境のためのxprofileの設定"

sudo pacman -S fcitx5-gtk fcitx5-im fcitx5-mozc fcitx5-configtool

jaConfig="
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
"

# xprofile作成
echo "$jaConfig" >~/.xprofile

echo "ログインし直すことで日本語入力環境が有効になります。"

# 変換無変換をIME有効無効切り替えにするやつ
# https://qiita.com/Usuyuki/items/8f8cb3c43ee0080d1e4f
