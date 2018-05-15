#!/bin/bash
set -x
APP_NAME='dvwa'
if [ "$(docker ps -q -f name=$APP_NAME)" ]; then
    docker-compose kill && docker-compose rm -f
fi
