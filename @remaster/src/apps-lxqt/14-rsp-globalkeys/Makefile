.PHONY: all deps fetch rebrand make 

all: fetch rebrand make

deps: 
	nice -15 bash ./deps.sh

fetch:
	nice -15 bash ./fetch.sh

rebrand:
	nice -15 bash ./rebrand.sh

fix:
	nice -15 rsp.nodeJS ./fix.js

make:
	nice -15 bash ./make.sh
