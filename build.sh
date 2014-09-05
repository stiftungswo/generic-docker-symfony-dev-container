#!/bin/bash
SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)
APP_PATH=$(realpath ${SCRIPTPATH}/../)

sudo docker build --rm -t swodev/base $SCRIPTPATH/base
sudo docker build --rm -t swodev/apache $SCRIPTPATH/apache

sudo docker build --rm -t swodev/apache-php:prod $SCRIPTPATH/apache-php/prod
sudo docker build --rm -t swodev/apache-php:dev  $SCRIPTPATH/apache-php/dev

sudo docker build --rm -t swodev/app  $SCRIPTPATH/app
