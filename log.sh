#!/bin/bash
SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)
APP_PATH=$(realpath ${SCRIPTPATH}/../)
DOCKER_CID_FILE=$SCRIPTPATH/../app/cache/docker.cid
DOCKER_CID=$(cat $DOCKER_CID_FILE)

sudo docker logs $DOCKER_CID
