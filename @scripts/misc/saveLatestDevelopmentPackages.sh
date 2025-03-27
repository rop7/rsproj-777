#!/bin/bash

sudo apt list --installed -a '*-dev' | grep "^[^\ ]*/" -o | sed 's/\///' | jq -R -s -c 'split("\n") | map(select(length > 0))' > /home/dev/rsp/latestDevelopmentPackages.json

exit 0
