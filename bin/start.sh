#!/bin/bash

CONTEXT=$(dirname "$0");
source $CONTEXT/config.sh

docker run -i --init --rm --cap-add=SYS_ADMIN $APP_NAME:latest node /data/src/app/examples/index.js