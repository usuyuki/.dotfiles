FROM archlinux:latest

RUN pacman -S git sudo

RUN useradd -m -s /bin/bash usuyuki
RUN echo 'Defaults visiblepw'            >> /etc/sudoers
RUN echo 'docker ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


USER usuyuki
WORKDIR /home/usuyuki


ENTRYPOINT ["bash", "-c", "echo editThisCommand."]

