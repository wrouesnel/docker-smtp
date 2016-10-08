CONTAINER_NAME ?= wrouesnel/docker-smtp:latest

all: docker

docker:
	docker build \
		--build-arg=http_proxy=$(http_proxy) \
		--build-arg=https_proxy=$(https_proxy) \
		-t $(CONTAINER_NAME) .
	
