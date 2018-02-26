#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/hadoop:master
docker build . --rm -t ericskang/hadoop:master

docker push ericskang/hadoop:master