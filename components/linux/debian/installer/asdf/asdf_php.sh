#!/bin/bash -eu
echo "○ php ○"
sudo apt -y install autoconf bison re2c
asdf plugin add php https://github.com/asdf-community/asdf-php
asdf install php latest
asdf global php latest
asdf-community/asdf-php