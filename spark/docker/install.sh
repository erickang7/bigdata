#!/bin/bash

#dockefile: https://github.com/sequenceiq/docker-spark/blob/master/Dockerfile

docker run --name spark -p 8088:8088 -p 8042:8042 -d ericskang/spark:latest tail -f /dev/null

docker exec -ti spark bash

export

pyspark
exit()

spark-submit --class org.apache.spark.examples.SparkPi \
--master local \
$SPARK_HOME/examples/jars/spark-examples*.jar 10


docker rm -f spark



