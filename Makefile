VERSION=8

all: pull build tag push

pull:
	podman pull centos:8

build:
	podman build --format=docker --no-cache -t centos-mono .

tag:
	podman tag centos-mono openmedicus/centos-mono:${VERSION}

push:
	podman push openmedicus/centos-mono:${VERSION}

run:
	podman run -i -t centos-mono /bin/bash
