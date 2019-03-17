#!/bin/bash

CONTEXT=$(dirname "$0");
source $CONTEXT/config.sh

docker run $APP_NAME:latest node /data/release/app/examples/index.js