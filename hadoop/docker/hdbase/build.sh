#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/hadoop:base
docker build . --rm -t ericskang/hadoop:base

docker push ericskang/hadoop:base