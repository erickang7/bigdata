#!/bin/bash

docker rmi -f $(docker images -q --filter "dangling=true")
docker rmi -f ericskang/spark:slave
docker build . --rm -t ericskang/spark:slave

docker push ericskang/spark:slave
