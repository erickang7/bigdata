docker exec -ti starmaster bash

hadoop fs -mkdir -p /data/books
docker cp warandpeace.txt starmaster:/root
hdfs dfs -put warandpeace.txt /data/books
hdfs dfs -get /data/books/warandpeach.txt