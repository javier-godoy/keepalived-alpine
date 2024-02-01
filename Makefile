KEEPALIVED_TAG=v2.2.8
ALPINE_TAG=3.19.1

TAG = jgodoy/keepalived\:$(KEEPALIVED_TAG)-alpine-$(ALPINE_TAG)

.PHONY: build

build:
	docker build . -t $(TAG) \
		--build-arg KEEPALIVED_TAG=$(KEEPALIVED_TAG) \
		--build-arg ALPINE_TAG=$(ALPINE_TAG)

install: build
