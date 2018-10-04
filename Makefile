VERSION=latest

all: pull build tag push

pull:
	sudo docker pull centos:7

build:
	sudo docker build --no-cache -t centos-mono .

tag:
	sudo docker tag centos-mono openmedicus/centos-mono:${VERSION}

push:
	sudo docker push openmedicus/centos-mono:${VERSION}

run:
	sudo docker run -i -t centos-mono /bin/bash
