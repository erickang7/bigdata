docker run --name hadoopmaster -d ericskang/hadoop:master
docker exec -ti hadoopmaster bash

docker rm -f hadoopmaster