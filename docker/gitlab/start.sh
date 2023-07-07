#!/bin/bash

export DOCKER_APP_BASE_PATH=$HOME/ecjon/docker-compose-all-in-one
export SUBNET_PREFIX=10.123.12
export GITLAB_PORT=18888

docker compose -f compose.yaml up -d
