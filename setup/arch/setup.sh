# 基本設定
sh ~/.dotfiles/components/linux/arch/settings.sh
# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/common/link.sh

# 必要なものをインストール
sh ~/.dotfiles/components/linux/debian/getApplication/installer_daily.sh



# 必要事項のメッセージ
sh ~/.dotfiles/components/linux/debian/after_finish.sh
sudo apt -y autoremove
#シェルの再起動
exec $SHELL -l
