#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/hadoop:datanode
docker build . --rm -t ericskang/hadoop:datanode

docker push ericskang/hadoop:datanode