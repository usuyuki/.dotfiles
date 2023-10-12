yay -S cloudflare-warp-bin
# エラーになった場合はこのスクリプトのコマンドを手動で実行するとできる
sudo systemctl start warp-svc
warp-cli register
sudo systemctl enable warp-svc
