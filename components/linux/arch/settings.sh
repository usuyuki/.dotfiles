# 日本語のためのパッケージのインストールはpacmanのインストールスクリプトで行う
# xprofile作成
echo "日本語環境のためのxprofileの設定"
jaConfig="
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
"

echo "$jaConfig" >~/.xprofile

echo "ログインし直すことで日本語入力環境が有効になります。"
