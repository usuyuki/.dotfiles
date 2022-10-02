
# set PATH for stack command(haskell-stack).
PATH="$HOME/.local/bin:$PATH"

# set stack ghc aliases
alias ghci='stack ghci'
alias ghc='stack ghc --'
alias runghc='stack runghc --'

# 略語
alias dc='docker-compose'
alias nv='nvim'
alias g='git'

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
alias df-up='eval "$(curl -L raw.githubusercontent.com/Usuyuki/dotfiles/main/components/independency/update_dotfiles.sh)"'