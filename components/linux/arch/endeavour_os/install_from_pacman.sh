jobName="Install From Pacman"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

# 最初から入ってる:git,yay,
sudo pacman -S code vim neofetch neovim gnuplot

# https://github.com/BurntSushi/ripgrep
sudo pacman -S ripgrep
# https://github.com/jesseduffield/lazygit
sudo pacman -S lazygit
# https://github.com/dundee/gdu
sudo pacman -S gdu
# https://github.com/ClementTsang/bottom
sudo pacman -S bottom

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■"
