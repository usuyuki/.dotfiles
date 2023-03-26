# zellij
# Rust製ターミナルマルチプレクサ
# https://github.com/zellij-org/zellij
echo "zellijのインストール-🎁→🗃→🎉"
(cd ~/ && wget https://github.com/zellij-org/zellij/releases/download/v0.34.4/zellij-x86_64-unknown-linux-musl.tar.gz )
tar xf ~/zellij-x86_64-unknown-linux-musl.tar.gz
mkdir -p ~/.local/bin
install -Dm755 ~/zellij ~/.local/bin/zellij
rm -rf ~/zellij-x86_64-unknown-linux-musl.tar.gz
rm -rf ~/zellij
