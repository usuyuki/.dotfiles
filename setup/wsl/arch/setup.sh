sh ~/.dotfiles/components/linux/arch/common/pacman_cui.sh

sh ~/.dotfiles/components/linux/arch/common/extra/install_starship.sh
# fontは不ように見えるがWSL経由でLinux GUIアプリ使うときに必要 install_fonts.shほどはいらないが最低限必要。vimとかの表示はWin側のフォントなのでNerd Fontは不要
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji
sh ~/.dotfiles/components/linux/arch/common/extra/install_zoxide.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_thefuck.sh
sh ~/.dotfiles/components/linux/arch/common/extra/install_fzf.sh

sh ~/.dotfiles/components/linux/arch/common/yay_cui.sh

# option
# sh ~/.dotfiles/components/linux/arch/endeavour_os/install_esp-idf.sh

# neovimのインストール(AstroNvimの依存関係がpacmanとかで被るので先にそれらを使う)
sh ~/.dotfiles/components/linux/arch/common/extra/install_astroNvim.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/common/after_finish.sh
