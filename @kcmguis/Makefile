.PHONY: all make post

all: deps make post

deps:
	./deps.sh
post:
	nice -15 rsp.nodeJS ./post.js

make:
	nice -15 bash ./make.sh
