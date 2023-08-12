yay -S cloudflare-warp-bin 
sudo systemctl start warp-svc
warp-cli register
sudo systemctl enable warp-svc
