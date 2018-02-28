FROM ericskang/starwood:base

COPY hd_config/*.xml $HADOOP_HOME/etc/hadoop/
COPY entrypoint/entrypoint.sh $HADOOP_HOME/sbin/
RUN chmod +x $HADOOP_HOME/sbin/entrypoint.sh
RUN cp $SPARK_HOME/conf/spark-defaults.conf.template $SPARK_HOME/conf/spark-defaults.conf \
&& echo "spark.master   spark://starmaster:7077" | tee -a -i $SPARK_HOME/conf/spark-defaults.conf \
&& cp $SPARK_HOME/conf/spark-env.sh.template $SPARK_HOME/conf/spark-env.sh \
&& echo "SPARK_MASTER_IP=starkmaster" | tee -a -i $SPARK_HOME/conf/spark-env.sh
EXPOSE 4040
EXPOSE 7077
EXPOSE 8080
EXPOSE 8088
EXPOSE 8188
EXPOSE 50070

CMD ["entrypoint.sh"]