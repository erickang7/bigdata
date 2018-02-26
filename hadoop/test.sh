docker run --name hadoop -d ericskang/hadoop:latest
docker exec -ti hadoop bash

hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.0.jar pi 16 1000