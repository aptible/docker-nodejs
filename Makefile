BATS = bats

all: test

test:
	$(BATS) test

.PHONY: test
