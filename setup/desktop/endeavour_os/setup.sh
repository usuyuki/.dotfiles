sh ~/.dotfiles/components/linux/arch/common/pacman_cui.sh
sh ~/.dotfiles/components/linux/arch/common/pacman_gui.sh

# yayはEndeavourOSには予め入っているのでインストール不要

sh ~/.dotfiles/components/linux/arch/common/extra/install_starship.sh
sh ~/.dotfiles/components/linux/arch/common/core/install_fonts.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_z.sh

sh ~/.dotfiles/components/linux/arch/common/yay_cui.sh
sh ~/.dotfiles/components/linux/arch/common/yay_gui.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_xfce4-screenshooter.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_docker-desktop.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_cloudflare-warp.sh

# option
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_esp-idf.sh
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_obs.sh

# Surface Laptop3(Intel内蔵グラフィックス)向け
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_ybacklight.sh
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_google-cloud-cli.sh

# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/common/extra/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/common/after_finish.sh
