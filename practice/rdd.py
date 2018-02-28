logfilesrdd = sc.textFile("file:///var/log/lastlog")
onlyerrorsrdd = logfilesrdd.filter(lambda line: "Eror" in line)
onlyerrorsrdd.saveAsTextFile("file:///tmp/onlyerrorsrdd")