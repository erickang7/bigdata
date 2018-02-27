FROM centos:latest

RUN curl -s http://apache.claz.org/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz | tar -xz -C /usr/local/ \
    && yum install -y java-1.8.0-openjdk hadoop hadoop-hdfs hadoop-libhdfs hadoop-yarn hadoop-mapreduce hadoop-client openssl \
    && rm -f spark-2.2.1-bin-hadoop2.7.tgz
ENV SPARK_HOME /usr/local/spark-2.2.1-bin-hadoop2.7
ENV PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH