#!/bin/bash
docker-compose up -d

docker exec -ti hdmaster bash

hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.0.jar pi 16 1000