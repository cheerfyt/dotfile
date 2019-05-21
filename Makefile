## dotfile Makefile

DATE := $(shell date +"%Y-%m-%dT%H:%M:%SZ")

all: push

push:
	git add . && git commit -m "change dotfile -${DATE}" && git push
