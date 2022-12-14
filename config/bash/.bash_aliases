# これが.bashrcに必要
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi

# set PATH for stack command(haskell-stack).
PATH="$HOME/.local/bin:$PATH"

# 基本

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# set stack ghc aliases
alias ghci='stack ghci'
alias ghc='stack ghc --'
alias runghc='stack runghc --'

# 略語
alias dc='docker-compose'
alias k='kubectl'
alias nv='nvim'
alias g='git'
alias gs='git status'

# ヨシ!系
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# cd
alias cd.='cd ..'
alias cd..='cd ../..'
alias cd...='cd ../../..'
alias cd_='cd $_'

# ls
alias ll='ls -alF'

alias rebash='exec $SHELL -l'

# dotfiles更新
alias df-up='eval "$(curl -L raw.githubusercontent.com/Usuyuki/.dotfiles/main/components/independency/update_dotfiles.sh)"'
