#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/starwood:base
docker build . --rm -t ericskang/starwood:base

docker push ericskang/starwood:base