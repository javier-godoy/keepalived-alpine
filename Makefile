TAG = jgodoy/keepalived\:latest

.PHONY: build

build:
	docker build . -t $(TAG)

install: build