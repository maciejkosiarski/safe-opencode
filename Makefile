.PHONY: build run

build:
	docker build --build-arg UID=$(shell id -u) --build-arg GID=$(shell id -g) --no-cache -t safe-opencode .

run:
	docker run --rm -it \
	-v "$$HOME/.config/opencode/opencode.json:/home/coder/.config/opencode/opencode.json:ro" \
	-v "$(PWD):/workspace:rw" \
	safe-opencode
