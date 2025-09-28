sudo pacman -S docker docker-compose docker-buildx
sudo gpasswd -a $USER docker
# sudo systemctl start docker
# sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl restart docker
# error getting credentials - err: exec: "docker-credential-desktop": executable file not found in $PATH,
# が出た場合
# https://stackoverflow.com/questions/65896681/exec-docker-credential-desktop-exe-executable-file-not-found-in-path
# sudo vi ~/.docker/config.json でcredsStoreをcredStoreにすると解決する

# rebootする(しないとpermission errorになる)
