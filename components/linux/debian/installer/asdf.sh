# asdfでバージョン管理する
jobName="Setup asdf"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆";
echo "----------------------------"
sudo apt install -y curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
echo "----------------------------"
echo "˗ˋˏ '$jobName' success ˎˊ˗ ";
echo "----------------------------"