# 先にrtx入れて言語関係を楽にする
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_rtx_after.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_pacman.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_fonts.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_z.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_yay.sh
# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/endeavour_os/after_finish.sh
