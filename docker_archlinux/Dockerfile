ARG TAG=latest

FROM archlinux:$TAG

# Install git and ansible
RUN pacman -Syyu --noconfirm
RUN pacman -Sy --noconfirm ansible git

RUN mkdir -p /home/root/da_setuper
WORKDIR /home/root/da_setuper
COPY . .

# CMD ansible-playbook bootstrap.yml -vvv
