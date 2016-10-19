DOCKER = docker
TAGS = LTS v6.9.x

all: release

release: $(TAGS)
	$(DOCKER) push pagerinc/nodejs

build: $(TAGS)

.PHONY: $(TAGS)
$(TAGS):
	$(DOCKER) build -t pagerinc/nodejs:$@ $@
