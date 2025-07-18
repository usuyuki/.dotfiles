#####
# Docker環境とその操作を行うための諸々セットアップ
# 使い捨て環境なのでdotfilesは入れず必要なファイルはcurlで取得
# alpineだとget-dockerが使えないしarchは普通にでかい
# ↓ubuntuならあるけどdebianにはない.bashrcの読み込み
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
# 先にsshでつなげるようにする(server_backup/scriptを参考)
#####
# vimだと日本語死ぬのでneovimいれる
apt update && apt upgrade -y && apt install curl tree git rsync neovim -y

# dotfiles cloneせずaliasだけ保存
curl -L -o ~/.bash_aliases https://raw.githubusercontent.com/usuyuki/.dotfiles/main/config/aliases
curl -L -o ~/.gitconfig https://raw.githubusercontent.com/usuyuki/.dotfiles/main/config/git/gitconfig
echo "if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi" >>~/.bashrc

# docker install
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# git initial setting
eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"

timedatectl set-timezone Asia/Tokyo
update-alternatives --config editor

# ssh
# →server_backup/scriptへ

source ~/.bashrc
