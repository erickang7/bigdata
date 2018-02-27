FROM centos:latest

RUN curl -s http://apache.claz.org/hadoop/common/hadoop-2.9.0/hadoop-2.9.0.tar.gz | tar -xz -C /usr/local/ \
&& curl -s http://apache.claz.org/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz | tar -xz -C /usr/local/ \
&& yum install -y java-1.8.0-openjdk which && rm -f hadoop-2.9.0.tar.gz spark-2.2.1-bin-hadoop2.7.tgz

ENV SPARK_HOME /usr/local/spark-2.2.1-bin-hadoop2.7
ENV HADOOP_HOME /usr/local/hadoop-2.9.0
ENV YARN_CONF_DIR /usr/local/hadoop-2.9.0/etc/hadoop
ENV JAVA_HOME /usr/lib/jvm/jre
ENV PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH

RUN cp $HADOOP_HOME/etc/hadoop/mapred-site.xml.template $HADOOP_HOME/etc/hadoop/mapred-site.xml \
&& mkdir -p $HADOOP_HOME/logs
