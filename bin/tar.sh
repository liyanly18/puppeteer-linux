#!/bin/bash

CONTEXT=$(dirname "$0");
source $CONTEXT/config.sh

docker tag $APP_NAME $APP_NAME:$APP_VERSION;
echo "tag $APP_VERSION success...";

docker save -o $APP_NAME-$APP_VERSION.tar $APP_NAME:$APP_VERSION;
echo "save docker tar success...";
