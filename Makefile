DISTRO ?= archlinux
DISTRO_VERSION ?= latest

DOCKER_IMAGE_NAME := test_$(DISTRO)_$(DISTRO_VERSION)
DOCKER_IMAGE_FOLDER := docker_$(DISTRO)
SSH_KEY_PROTOCOL := ed25519

all: test  # TODO: This should be something else once building is done

build_docker: $(DOCKER_IMAGE_FOLDER)/Dockerfile
	docker build -t $(DOCKER_IMAGE_NAME) -f $(DOCKER_IMAGE_FOLDER)/Dockerfile --build-arg TAG=$(DISTRO_VERSION) .

test: build_docker
	docker run -it  -v ${HOME}/.ssh:/home/root/.ssh/ $(DOCKER_IMAGE_NAME)
