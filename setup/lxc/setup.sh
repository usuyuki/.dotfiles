#####
# Docker環境とその操作を行うための諸々セットアップ
# 使い捨て環境なのでdotfilesは入れず必要なファイルはcurlで取得
#####
sudo apt update && sudo apt upgrade
sudo apt install curl tree git neovim -y

# dotfiles cloneせずaliasだけ保存
curl -L -o ~/.bash_aliases https://raw.githubusercontent.com/usuyuki/.dotfiles/main/config/aliases
curl -L -o ~/.gitconfig https://raw.githubusercontent.com/usuyuki/.dotfiles/main/config/git/gitconfig

# docker install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

eval "$(curl -L raw.githubusercontent.com/usuyuki/.dotfiles/main/components/linux/common/github_initial_setting.sh)"

source ~/.bashrc
