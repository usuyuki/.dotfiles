# neovimの準備
jobName="Setup neovim"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt -y install neovim

git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
echo "----------------------------"
echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "----------------------------"