jobName="後の構成に必要な必須ソフトウェアの設定やインストール"
# zshの設定
echo "bash_aliasesの読み込み設定"
aliasLoad="
# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
. ~/.bash_aliases                                                                                                                                                          
fi 
"
# ubuntuと違ってbash_aliases読み込みの項目がないのでbashrcに上書き
echo "$aliasLoad" >>~/.bashrc

# fisherのインストール
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
# zコマンドのインストール
fisher install jethrokuan/z

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"