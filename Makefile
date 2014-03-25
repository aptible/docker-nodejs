DOCKER = docker

TAG = $(shell git rev-parse --abbrev-ref HEAD 2>/dev/null)
ifeq ($(TAG), master)
	TAG = latest
else ifeq ($(TAG), HEAD)
	TAG = latest
endif

all: release

release: test build
	$(DOCKER) push quay.io/aptible/nodejs

build:
	$(DOCKER) build -t quay.io/aptible/nodejs:$(TAG) .
