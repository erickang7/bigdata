logfilesrdd = sc.textFile("file:///var/log/hadoop/hdfs/hadoop-fs-*")
onlyerrorsrdd = logfilesrdd.filter(lambda line: "Eror" in line)
onlyerrorsrdd.saveAsTextFile("file:///tmp/onlyerrorsrdd")