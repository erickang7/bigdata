#!/bin/bash 

docker exec -ti starmaster bash

hdfs dfs -ls

spark-submit --class org.apache.spark.examples.SparkPi \
--master yarn-cluster \
$SPARK_HOME/examples/jars/spark-examples*.jar 10

spark-submit --class org.apache.spark.examples.SparkPi \
--master spark://starmaster:7077 \
--driver-memory 512m \
--executor-memory 512m \
--executor-cores 1 \
$SPARK_HOME/examples/jars/spark-examples*.jar 10

hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.0.jar pi 16 1000