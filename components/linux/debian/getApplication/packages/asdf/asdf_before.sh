# asdfでpython入れるために必要なもの
sudo apt install -y libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev 

# 対話型シェル対応できていない↓これ動いていない
expect -c "
set timeout 5
expect \"Geographic area:\"
send \"6\n\"
expect \"$\"
exit 0
"

expect -c "
set timeout 5
expect \"Time zone:\"
send \"79\n\"
expect \"$\"
exit 0
"
