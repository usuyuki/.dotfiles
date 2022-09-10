FROM ubuntu:22.04
RUN sed -i 's@archive.ubuntu.com@ftp.jaist.ac.jp/pub/Linux@g' /etc/apt/sources.list
RUN apt -y update
RUN apt -y upgrade
RUN apt -y autoremove
RUN apt -y install git curl sudo make



# sudoできる一般ユーザー追加
RUN apt -y install sudo
ARG USERNAME=usuyuki
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
ARG PASSWORD=user
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME && \
    echo $USERNAME:$PASSWORD | chpasswd && \
    echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USERNAME
WORKDIR /home/$USERNAME/


# systemctlできるやつ追加→これすると事故る
RUN sudo apt -y install init systemd