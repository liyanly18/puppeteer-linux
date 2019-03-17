#!/bin/bash

CONTEXT=$(dirname "$0");
source $CONTEXT/config.sh

docker load -i $APP_NAME-$APP_VERSION.tar;
