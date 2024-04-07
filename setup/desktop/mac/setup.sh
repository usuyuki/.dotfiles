jobName="後の構成に必要な必須ソフトウェアの設定やインストール"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# 必要なものをインストール
zshrc='
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
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

eval "$(/opt/homebrew/bin/mise activate zsh)"

# bash_aliases読み込み
if [ -f ~/.bash_aliases ]; then                                                                                                                                                    
    . ~/.bash_aliases                                                                                                                                                          
fi 

# direnv用
eval "$(direnv hook zsh)"

plugins=( 
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

# ctrl+rとか使えるようにする
bindkey -e


eval "$(/opt/homebrew/bin/brew shellenv)"
'
touch ~/.zshrc
echo "$zshrc" >>~/.zshrc

# シンボリックリンク
sh ~/.dotfiles/components/linux/common/link.sh

# Homebrewの導入　https://brew.sh/ja/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew事前設定
brew tap homebrew/linux-fonts


# Homebrew関連のインストール
brew bundle install --file=~/.dotfiles/config/brew/Brewfile
# →吐き出しはbrew bundle dump

# starship
echo 'eval "$(starship init bash)"' >>~/.zshrc

# fzf
$(brew --prefix)/opt/fzf/install
echo 'export FZF_CTRL_T_COMMAND="rg --files --hidden --follow --glob \"!.git/*\""' >>~/.zshrc
echo 'export FZF_CTRL_T_OPTS="--preview \"bat  --color=always --style=header,grid --line-range :100 {}\""' >>~/.zshrc

# thefuck
echo 'eval "$(thefuck --alias)"' >>~/.zshrc

# zoxide
echo 'eval "$(zoxide init zsh)"' >>~/.zshrc

# neovim
sh ~/.dotfiles/components/linux/arch/common/extra/install_astroNvim.sh

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
