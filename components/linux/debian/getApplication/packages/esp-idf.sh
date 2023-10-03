# https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/linux-macos-setup.html
# aptやbrewなどに応じて事前の依存を解決
# brewでesp-idfもあるが，バージョンが古いなどの問題がある
(mkdir -p ~/esp && \
cd ~/esp && \
git clone --recursive https://github.com/espressif/esp-idf.git )

(cd ~/esp/esp-idf && \
./install.sh esp32 )
