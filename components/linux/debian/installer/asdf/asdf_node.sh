#!/bin/bash -eu
echo "○ node ○"
sudo apt -y install dirmngr gpg gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest