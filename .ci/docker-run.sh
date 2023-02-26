#!/bin/bash

# This is intended to be run inside the docker container as the command of the docker-compose.
set -ex

cd .ci
echo "Inside .ci, ready to fire docker composer."

if [ "$INTEGRATION" == "true" ]; then
    docker-compose up --exit-code-from logstash
else
    docker-compose up --exit-code-from logstash logstash
fi
