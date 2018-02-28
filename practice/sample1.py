#pyspark --master local

from pyspark import SparkContext
from random import random

#sc = SparkContext("local[*]")
def sample(p):
    x, y = random(), random()
    return 1 if x*y+ y*y <1 else 0

count = sc.parallelize(xrange(0,1000000)).map(sample).reduce(lambda a,b: a+b)
print "The result of Pi in %s mode is roughly %f" % (sc.master, (4.0*count/1000000))