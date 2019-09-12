#!/bin/bash

CONTEXT=$(dirname "$0");
source $CONTEXT/config.sh

docker run -i --user="pptruser" --init --rm --cap-add=SYS_ADMIN $APP_NAME:latest node /home/pptruser/app/examples/index.js