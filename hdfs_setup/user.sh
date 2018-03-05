docker exec -ti starmaster bash

hadoop fs -mkdir -p /user/erickang
hadoop fs -chown erickang:erickang /user/erickang
hadoop fs -mkdir /tmp
hadoop fs -chmod 777 /tmp

hadoop fs -ls /tmp
hadoop fs -ls /user/erickang

hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.0.jar pi 16 1000