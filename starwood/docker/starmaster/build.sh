#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/starwood:master
docker build . --rm -t ericskang/starwood:master

docker push ericskang/starwood:master