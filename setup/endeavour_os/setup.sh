# 必要なものをインストール
zshrc="
eval \"$(~/bin/rtx activate bash)\"
plugins=( 
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)
"
touch ~/.zshrc
echo "$zshrc" >>~/.zshrc

# 先にrtx入れて言語関係を楽にする
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_rtx.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_pacman.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_yay.sh
# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/endeavour_os/after_finish.sh
