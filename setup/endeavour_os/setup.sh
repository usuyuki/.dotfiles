# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/common/link.sh

# 基本設定
sh ~/.dotfiles/components/linux/arch/settings.sh

# 必要なものをインストール

# 先にrtx入れて言語関係を楽にする
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_rtx.sh

# neovimのインストール(neovimに依存するものもここで入れるのでこの後にpacmanを実行する)
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_neovim.sh

sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_pacman.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_neovim.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_yay.sh
sh ~/.dotfiles/components/linux/arch/endeavour_os/install_from_rtx.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/arch/endeavour_os/after_finish.sh
