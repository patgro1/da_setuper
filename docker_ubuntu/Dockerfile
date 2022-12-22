ARG TAG=latest
ARG DEBIAN_FRONTEND=noninteractive

FROM ubuntu:$TAG

# Install git and ansible
RUN apt update
RUN DEBIAN_FRONTEND=$DEBIAN_FRONTEND apt -y install ansible git

RUN mkdir -p /home/root/da_setuper
WORKDIR /home/root/da_setuper
COPY . .

CMD ansible-playbook bootstrap.yml --verbose
