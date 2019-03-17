#!/bin/bash

CONTEXT=$(dirname "$0");
source $CONTEXT/config.sh

docker stop $(docker ps -q --filter ancestor=$APP_NAME:$APP_VERSION);
