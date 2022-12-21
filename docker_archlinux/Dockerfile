ARG TAG=latest

FROM archlinux:$TAG

# Install git and ansible
RUN pacman -Syyu --noconfirm
RUN pacman -Sy --noconfirm git ansible openssh

RUN mkdir -p /home/root/da_setuper
WORKDIR /home/root/da_setuper
COPY . .

