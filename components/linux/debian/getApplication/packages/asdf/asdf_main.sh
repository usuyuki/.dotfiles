git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3

chmod a+x ~/.asdf/asdf.sh
# bashrcに追記
echo " " >> ~/.bashrc
echo . $HOME/.asdf/asdf.sh >> ~/.bashrc
echo . $HOME/.asdf/completions/asdf.bash >> ~/.bashrc
