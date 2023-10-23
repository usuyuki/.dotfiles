jobName="Install From Yay(AUR) CUI App"
echo "----------------------------"
echo "⋆⸜ '$jobName' started ⸝⋆"
echo "----------------------------"

yay -S vidir
# vidir vimでディレクトリ内のファイル名をまとめて変えられるやつ https://github.com/trapd00r/vidir

# optional
yay -S tty-clock 
# tty-clock i3wmでよく見るCUIの時計

# platfomrio依存
yay -S platformio-git
sudo pip install Click semantic_version requests bottle colorama marshmallow pyelftools pyserial starlette tabulate uvicorn wsproto pyelftools 

echo "˗ˋˏ '$jobName' success ˎˊ˗ "
echo "■■■■■■■■■■oud

