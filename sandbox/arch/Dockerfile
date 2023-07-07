FROM archlinux

# パッケージの更新と必要なツールのインストール
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm sudo git

# ユーザーの作成
RUN useradd -m usuyuki \
    && echo 'usuyuki ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# 作業ディレクトリの設定
WORKDIR /home/usuyuki

# ユーザーを切り替える
USER usuyuki

# コンテナ実行時のデフォルトコマンド
CMD ["/bin/bash"]

