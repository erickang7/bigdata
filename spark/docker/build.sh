#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/spark:latest
docker build . --rm -t ericskang/spark:latest

docker push ericskang/spark:latest
