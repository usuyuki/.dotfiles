# bash_aliasesを読み込めるように設定
aliasLoad="
# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
. ~/.bash_aliases                                                                                                                                                          
fi 
"]
# ubuntuと違ってbash_aliases読み込みの項目がないのでbashrcに上書き
echo "$aliasLoad" >>~/.bashrc

# 日本語のためのパッケージのインストールはpacmanのインストールスクリプトで行う
# xprofile作成
jaConfig="
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
"

echo "$jaConfig" >~/.xprofile
