.PHONY: all deps fetch rebrand make post

all: fetch rebrand make post

deps: 
	nice -15 bash ./deps.sh

fetch:
	nice -15 bash ./fetch.sh

rebrand:
	nice -15 bash ./rebrand.sh

post:
	nice -15 rsp.nodeJS ./post.js

make:
	nice -15 bash ./make.sh
