#!/bin/bash

export SUBNET_PREFIX=10.123.11
export SAFELINE_DIR=${HOME}/docker/safeline
export POSTGRES_PASSWORD=$(LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c 32)
export REDIS_PASSWORD=$(LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c 32)
export IMAGE_TAG=latest
export MGT_PORT=9443

echo $SUBNET_PREFIX 
echo $SAFELINE_DIR
echo $POSTGRES_PASSWORD
echo $REDIS_PASSWORD
echo $IMAGE_TAG
echo $MGT_PORT

docker compose -f compose.yaml up -d
