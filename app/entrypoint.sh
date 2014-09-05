#!/bin/bash

service mysql start

cd /srv/application

php app/console doc:data:create
php app/console doc:schema:create
php app/console assets:install
php app/console cache:clear

/usr/sbin/apache2 -D FOREGROUND
