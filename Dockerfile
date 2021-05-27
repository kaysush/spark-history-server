ARG SPARK_IMAGE=gcr.io/spark-operator/spark:v2.4.0
FROM ${SPARK_IMAGE}

ADD start-server.sh /opt/start-server.sh

# Set up dependencies for Google Cloud Storage access.
ADD https://repo1.maven.org/maven2/com/google/guava/guava/23.0/guava-23.0.jar $SPARK_HOME/jars
# Add the connector jar needed to access Google Cloud Storage using the Hadoop FileSystem API.
ADD https://storage.googleapis.com/hadoop-lib/gcs/gcs-connector-hadoop2-2.0.1.jar $SPARK_HOME/jars

RUN rm $SPARK_HOME/jars/guava-14.0.1.jar && chmod +x /opt/start-server.sh

EXPOSE 18080

ENTRYPOINT ["/opt/start-server.sh"]
