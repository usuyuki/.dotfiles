echo "うすゆきdotfilesをインストールします"
git clone https://github.com/usuyuki/.dotfiles.git ~/.dotfiles

# シンボリックリンク貼る
sh ~/.dotfiles/components/linux/common/link.sh
