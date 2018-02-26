FROM centos:latest

RUN curl -s http://apache.claz.org/hadoop/common/hadoop-2.9.0/hadoop-2.9.0.tar.gz | tar -xz -C /usr/local/ \
&& yum install -y java-1.8.0-openjdk which && rm -f hadoop-2.9.0.tar.gz

ENV HADOOP_HOME /usr/local/hadoop-2.9.0
ENV JAVA_HOME /usr/lib/jvm/jre
ENV PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH 

WORKDIR $HADOOP_HOME/etc/hadoop
RUN cp mapred-site.xml.template mapred-site.xml

WORKDIR /home

CMD ["tail", "-f", "/dev/null"]