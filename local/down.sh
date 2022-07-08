#!/bin/bash 

#Configuration
source local/conf.sh

export APP_NAME=api-server

docker stack rm $APP_NAME

if [[ 0 -ne $(docker secret ls -q -f name=api-server-secrets-env | wc -l) ]]
then
  docker secret rm api-server-secrets-env
fi