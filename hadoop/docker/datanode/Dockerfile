FROM centos:latest

RUN curl -s http://apache.claz.org/hadoop/common/hadoop-2.9.0/hadoop-2.9.0.tar.gz | tar -xz -C /usr/local/ \
&& yum install -y java-1.8.0-openjdk which && rm -f hadoop-2.9.0.tar.gz

ENV HADOOP_HOME /usr/local/hadoop-2.9.0
ENV JAVA_HOME /usr/lib/jvm/jre
ENV PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH 

RUN cp $HADOOP_HOME/etc/hadoop/mapred-site.xml.template $HADOOP_HOME/etc/hadoop/mapred-site.xml && mkdir -p $HADOOP_HOME/logs
COPY hd_config/*.xml $HADOOP_HOME/etc/hadoop/

COPY entrypoint/entrypoint.sh $HADOOP_HOME/sbin/
RUN chmod +x $HADOOP_HOME/sbin/entrypoint.sh

CMD ["entrypoint.sh"]