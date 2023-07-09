# 必要なものをインストール
zshrc='
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数

export HISTSIZE=1000


# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

eval "$(/usr/bin/rtx activate bash)"

# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    

. ~/.bash_aliases                                                                                                                                                          

fi 


plugins=( 
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)
'
touch ~/.zshrc
echo "$zshrc" >>~/.zshrc

echo "bash_aliasesの読み込み設定"
aliasLoad="
# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
. ~/.bash_aliases                                                                                                                                                          
fi 
"
# ubuntuと違ってbash_aliases読み込みの項目がないのでbashrcに上書き
echo "$aliasLoad" >>~/.bashrc

# 先にrtx入れて言語関係を楽にする
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_rtx.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_pacman.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_yay.sh
# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/endeavour_os/after_finish.sh
