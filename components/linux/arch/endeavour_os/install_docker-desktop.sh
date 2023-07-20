# 公式に従う
# https://docs.docker.com/desktop/install/archlinux/
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.21.1-x86_64.pkg.tar.zst
sudo pacman -U docker-desktop-4.21.1-x86_64.pkg.tar.zst
rm -rf docker-desktop-4.21.1-x86_64.pkg.tar.zst
# docker-desktopが起動できる

# dockerコマンドが使えないのでyay経由で追加
# https://github.com/docker/desktop-linux/issues/76
yay -S docker-cli-bin
