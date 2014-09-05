#!/bin/bash
SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)
APP_PATH=$(realpath ${SCRIPTPATH}/../)

cd $SCRIPTPATH

if [ ! -f composer.phar ]; then
	curl -sS https://getcomposer.org/installer | php
fi

cd $APP_PATH

if [ ! -f composer.lock ];then
	$SCRIPTPATH/composer.phar install
fi

sudo docker run -d -p 80:80 --cidfile ${APP_PATH}/app/cache/docker.cid -v ${APP_PATH}:/srv/application swodev/app
