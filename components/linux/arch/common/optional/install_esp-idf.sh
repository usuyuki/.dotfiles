# yay -S esp-idf ←これだとうまくいかない
# https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-macos-setup.html で指定の依存関係
sudo pacman -S --needed gcc git make flex bison gperf python cmake ninja ccache dfu-util libusb
(mkdir -p ~/esp &&
	cd ~/esp &&
	git clone -b v5.1.1 --recursive https://github.com/espressif/esp-idf.git)
(cd ~/esp/esp-idf &&
	./install.sh all)
# 使う時→　get_idf →　idf.py build →　idf.py -p /dev/ttyACM1 flash
