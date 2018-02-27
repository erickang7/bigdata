#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/spark:base
docker build . --rm -t ericskang/spark:base

docker push ericskang/spark:base
