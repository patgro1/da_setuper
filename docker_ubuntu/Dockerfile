ARG TAG=latest
ARG DEBIAN_FRONTEND=noninteractive

FROM ubuntu:$TAG

# Install git and ansible
RUN apt update
RUN DEBIAN_FRONTEND=$DEBIAN_FRONTEND apt -y install git ansible

RUN mkdir /root/da_setuper
WORKDIR /root/da_setuper
COPY . 
