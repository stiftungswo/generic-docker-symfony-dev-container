#!/bin/bash
sudo docker build --rm -t swodev/base base
sudo docker build --rm -t swodev/apache apache

sudo docker build --rm -t swodev/apache-php:prod apache-php/prod
sudo docker build --rm -t swodev/apache-php:dev  apache-php/dev

sudo docker build --rm -t swodev/app  app
