.PHONY: all deps fetch rebrand make post

all: fetch rebrand make post

deps: 
	nice -15 bash ./deps.sh

fetch:
	nice -15 bash ./fetch.sh

post:
	nice -15 rsp.nodeJS ./post.js

rebrand:
	nice -15 bash ./rebrand.sh

make:
	nice -15 bash ./make.sh

reinstall:
	nice -15 bash ./reinstall.sh
