sudo pacman -S fzf bat
# インストールコマンドを叩く
echo 'export FZF_CTRL_T_COMMAND="rg --files --hidden --follow --glob \"!.git/*\""' >> ~/.zshrc
echo 'export FZF_CTRL_T_OPTS="--preview \"bat  --color=always --style=header,grid --line-range :100 {}\""' >> ~/.zshrc

# コマンドについて
echo 'alt+c でディレクトリ検索+移動'
echo 'ctrl+t でカレントディレクトリ配下のファイルをインクリメンタル検索'
echo 'ctrl+r でコマンド履歴もfzf使用'
