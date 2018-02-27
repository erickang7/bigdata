FROM ericskang/hadoop:base

COPY hd_config/*.xml $HADOOP_HOME/etc/hadoop/

COPY entrypoint/entrypoint.sh $HADOOP_HOME/sbin/
RUN chmod +x $HADOOP_HOME/sbin/entrypoint.sh

CMD ["entrypoint.sh"]