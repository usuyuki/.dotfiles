sh ~/.dotfiles/components/linux/arch/common/pacman_cui.sh
sh ~/.dotfiles/components/linux/arch/common/pacman_gui.sh

# yayはEndeavourOSには予め入っているのでインストール不要

sh ~/.dotfiles/components/linux/arch/common/extra/install_starship.sh
sh ~/.dotfiles/components/linux/arch/common/core/install_fonts.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_zoxide.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_thefuck.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_fzf.sh

sh ~/.dotfiles/components/linux/arch/common/yay_cui.sh
sh ~/.dotfiles/components/linux/arch/common/yay_gui.sh

sh ~/.dotfiles/components/linux/arch/common/extra/install_docker-cli.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_cloudflare-warp.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_xfce4-screenshooter.sh
# option
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_esp-idf.sh

# Surface Laptop3(Intel内蔵グラフィックス)向け←AMDは無理なのでxbacklightを使う
# そもそもxbacklightで賄えるのでこれ不要
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_ybacklight.sh
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_google-cloud-cli.sh

# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/common/extra/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/common/after_finish.sh

# デュアルブートの時計ズレ解消のため、Linuxでローカルタイムを使うようにする
sudo timedatectl set-local-rtc true
