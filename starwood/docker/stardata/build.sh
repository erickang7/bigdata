#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/starwood:datanode
docker build . --rm -t ericskang/starwood:datanode
docker push ericskang/starwood:datanode