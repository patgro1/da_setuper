DISTRO ?= archlinux
DISTRO_VERSION ?= latest

DOCKER_IMAGE_NAME := test_$(DISTRO)_$(DISTRO_VERSION)
DOCKER_IMAGE_FOLDER := docker_$(DISTRO)

USER = $(shell whoami)
HOME_DIR = /home/$(USER)

CURRENT_DIR := $(shell pwd)
SSH_AUTH_SOCK_DIR := $(shell dirname $SSH_AUTH_SOCK)
export DOCKER_BUILDKIT := 1

all:
	ansible-playbook bootstrap.yml -vv


build_docker: $(DOCKER_IMAGE_FOLDER)/Dockerfile
	docker build -t $(DOCKER_IMAGE_NAME) -f $(DOCKER_IMAGE_FOLDER)/Dockerfile --build-arg TAG=$(DISTRO_VERSION) --build-arg USER=$(USER) .

test: build_docker
	docker run -it --rm  -v $(shell pwd):$(HOME_DIR)/da_setuper -v ${HOME}/.ssh:/${HOME_DIR}/.ssh/ $(DOCKER_IMAGE_NAME)

toto:
	echo $(shell dirname $(SSH_AUTH_SOCK)) -e SSH_AUTH_SOCK=$(SSH_AUTH_SOCK)
