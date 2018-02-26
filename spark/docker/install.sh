#!/bin/bash

#dockefile: https://github.com/sequenceiq/docker-spark/blob/master/Dockerfile

docker run --name spark -p 8088:8088 -p 8042:8042 -h master -d ericskang/spark:latest tail -f /dev/null
docker exec -ti spark bash

# check ENV settings
export | grep -e SPARK_HOME -e PATH -e HOSTNAME

#test pyspark
pyspark
exit()

#test spark-submit
spark-submit --class org.apache.spark.examples.SparkPi \
--master local \
$SPARK_HOME/examples/jars/spark-examples*.jar 10

# clean up test env
docker rm -f spark



