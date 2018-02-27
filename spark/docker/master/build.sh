#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/spark:master
docker build . --rm -t ericskang/spark:master

docker push ericskang/spark:master
