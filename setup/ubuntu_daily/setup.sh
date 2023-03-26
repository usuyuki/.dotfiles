# 基本設定
sh ~/.dotfiles/components/linux/debian/settings.sh

# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/getApplication/installer_daily.sh

# シンボリックリンク貼る neovimの設定的にあとにしないと危険
sh ~/.dotfiles/components/linux/common/link.sh

# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/debian/after_finish.sh
