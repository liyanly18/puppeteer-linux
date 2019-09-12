#!/bin/bash
CONTEXT=$(dirname "$0");
source ${CONTEXT}/config.sh

docker tag $APP_NAME:latest liyanlab/$APP_NAME:$APP_VERSION

docker push liyanlab/$APP_NAME:$APP_VERSION

docker tag $APP_NAME:latest liyanlab/$APP_NAME:latest

docker push liyanlab/$APP_NAME:latest