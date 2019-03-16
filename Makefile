all: build

build:
	@docker build --tag=bufer/openfire .

release: build
	@docker build --tag=bufer/openfire:$(shell cat VERSION) .
