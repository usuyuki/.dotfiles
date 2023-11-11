# 公式に従う
# dockerコマンドが使えないのでyay経由で追加(先に追加しないと依存が壊れる)
# https://github.com/docker/desktop-linux/issues/76
# これdockerなのかdocker-cli-binなのか→cliの方(dockerだとcomposeが入ってない)

# https://docs.docker.com/desktop/install/archlinux/
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.25.0-x86_64.pkg.tar.zst
sudo pacman -U docker-desktop-4.25.0-x86_64.pkg.tar.zst
rm -rf docker-desktop-4.25.0-x86_64.pkg.tar.zst
# docker-desktopが起動できる
# exec: "com.docker.cli": executable file not found in $PATH  になるので下記を実行
sudo pacman -S docker
# yay -S docker-cli-bin kubectl
