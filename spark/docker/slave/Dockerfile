FROM ericskang/spark:base
 
ENV SPARK_HOME /usr/local/spark-2.2.1-bin-hadoop2.7
ENV PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH
RUN cp $SPARK_HOME/conf/spark-defaults.conf.template $SPARK_HOME/conf/spark-defaults.conf \
&& echo "spark.master   spark://sparkmaster:7077" | tee -a -i $SPARK_HOME/conf/spark-defaults.conf \
&& cp $SPARK_HOME/conf/spark-env.sh.template $SPARK_HOME/conf/spark-env.sh \
&& echo "SPARK_MASTER_IP=sparkmaster" | tee -a -i $SPARK_HOME/conf/spark-env.sh
EXPOSE 8081

CMD ["start-slave.sh","spark://sparkmaster:7077"]