FROM ubuntu:22.04
RUN apt -y update
RUN apt -y upgrade
RUN apt -y autoremove
RUN apt -y install git curl