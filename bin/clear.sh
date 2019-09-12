#!/bin/bash
CONTEXT=$(dirname "$0");
source ${CONTEXT}/config.sh

docker rm $(docker ps -a -q)

docker rmi $(docker images -f "dangling=true" -q)