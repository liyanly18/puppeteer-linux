#!/bin/bash
CONTEXT=$(dirname "$0");
source ${CONTEXT}/config.sh

docker build --no-cache --build-arg http_proxy=$APP_PROXY --build-arg https_proxy=$APP_PROXY -t $APP_NAME .

#no proxy
#docker build --no-cache -t $APP_NAME .
