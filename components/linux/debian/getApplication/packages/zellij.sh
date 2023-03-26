echo "zellijのインストール-🎁→🗃→🎉"
(cd ~/ && wget https://github.com/zellij-org/zellij/releases/download/v0.34.4/zellij-x86_64-unknown-linux-musl.tar.gz )
tar xf ~/zellij-x86_64-unknown-linux-musl.tar.gz
mkdir -p ~/.local/bin
install -Dm755 ~/zellij ~/.local/bin/zellij
rm -rf ~/zellij-x86_64-unknown-linux-musl.tar.gz
rm -rf ~/zellij

<< PACKAGE_INFO 
🎁パッケージ名: z 
🐙GitHub: https://github.com/zellij-org/zellij
📰概要: Rust製ターミナルマルチプレクサ

📒使い方・備考📒
```
zellij
```

PACKAGE_INFO
