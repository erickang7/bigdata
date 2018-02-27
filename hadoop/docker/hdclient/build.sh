#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/hadoop:client
docker build . --rm -t ericskang/hadoop:client

docker push ericskang/hadoop:client