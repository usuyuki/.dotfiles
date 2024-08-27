jobName="Install From Yay(AUR) CUI App"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

yay -S vidir proxyman-git
# vidir vimでディレクトリ内のファイル名をまとめて変えられるやつ https://github.com/trapd00r/vidir
# proxyman プロキシをかんたんに設定できるやつ https://github.com/himanshub16/ProxyMan

# optional
yay -S tty-clock rustscan
# tty-clock i3wmでよく見るCUIの時計
# rustscan portスキャン https://github.com/RustScan/RustScan

# platfomrio依存←pacmanのextraにpio復活してる
# yay -S platformio-git
# sudo pip install Click semantic_version requests bottle colorama marshmallow pyelftools pyserial starlette tabulate uvicorn wsproto pyelftools 

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■oud

