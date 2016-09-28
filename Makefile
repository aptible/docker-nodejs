DOCKER = docker
TAGS = v0.10.x v0.12.x v4.2.x v4.3.x v4.4.x v4.5.x v4.6.x v6.1.x v6.2.x v6.3.x v6.4.x v6.7.x

all: release

release: $(TAGS)
	$(DOCKER) push quay.io/aptible/nodejs

build: $(TAGS)

.PHONY: $(TAGS)
$(TAGS):
	$(DOCKER) build -t quay.io/aptible/nodejs:$@ $@
