ARG TAG=latest

FROM archlinux:$TAG

# Install git and ansible
RUN pacman -Syyu --noconfirm
RUN pacman -Sy --noconfirm git ansible

RUN mkdir /root/da_setuper
WORKDIR /root/da_setuper
COPY . .

