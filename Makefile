FROM = $(shell grep -P ^FROM Dockerfile | cut -d' ' -f2)
IMAGE = lazyfrosch/debian:stretch-slim

all: pull build

pull:
	docker pull $(IMAGE) || true
	docker pull $(FROM)

build:
	docker build --rm --cache-from $(IMAGE) --tag $(IMAGE) .

push:
	docker push $(IMAGE)
