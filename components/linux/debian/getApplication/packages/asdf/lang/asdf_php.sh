#!/bin/bash -eu
echo "🧃 php 🧃"
sudo apt -y install autoconf bison build-essential curl gettext git libgd-dev libcurl4-openssl-dev libedit-dev libicu-dev libjpeg-dev libmysqlclient-dev libonig-dev libpng-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libxml2-dev libzip-dev openssl pkg-config re2c zlib1g-dev autoconf
asdf plugin-add php https://github.com/asdf-community/asdf-php.git
asdf install php 8.2.7
asdf global php 8.2.7
