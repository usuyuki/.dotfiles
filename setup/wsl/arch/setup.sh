sh ~/.dotfiles/components/linux/arch/common/pacman_cui.sh

sh ~/.dotfiles/components/linux/arch/common/extra/install_starship.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_z.sh

sh ~/.dotfiles/components/linux/arch/common/yay_cui.sh

# option
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_esp-idf.sh

# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/common/extra/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/common/after_finish.sh
