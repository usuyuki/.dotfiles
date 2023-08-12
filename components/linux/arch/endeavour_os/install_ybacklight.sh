# xbacklightで明るさの調整ができず、xrandrも一瞬しか反映されないのでybackghtをインストールする
# https://github.com/yath/ybacklight/tree/master
yay -S ybacklight
# Permission Error になるので権限付与
# 参考: https://matoken.org/blog/2017/04/05/backlight-controle-command-ybacklight/
sudo chmod o+w /sys/class/backlight/intel_backlight/brightness
