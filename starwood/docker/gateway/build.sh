#!/bin/bash

docker rmi -f $(docker images -f "dangling=true" -q)
docker rmi -f ericskang/starwood:nginx
docker build . --rm -t ericskang/starwood:nginx
docker push ericskang/starwood:nginx 

