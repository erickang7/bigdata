FROM ericskang/spark:base

RUN cp $SPARK_HOME/conf/spark-defaults.conf.template $SPARK_HOME/conf/spark-defaults.conf \
&& echo "spark.master   spark://sparkmaster:7077" | tee -a -i $SPARK_HOME/conf/spark-defaults.conf \
&& cp $SPARK_HOME/conf/spark-env.sh.template $SPARK_HOME/conf/spark-env.sh \
&& echo "SPARK_MASTER_IP=sparkmaster" | tee -a -i $SPARK_HOME/conf/spark-env.sh
EXPOSE 7077
EXPOSE 8080

CMD ["start-master.sh"]