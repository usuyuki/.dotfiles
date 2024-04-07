current_dir=`pwd`
cd ~/.dotfiles
git pull origin main
cd ~/.config/nvim/
git pull origin main
cd $current_dir
