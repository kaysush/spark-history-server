#!/bin/sh

set -e

eventsDir=$1

export SPARK_HISTORY_OPTS="$SPARK_HISTORY_OPTS \
      -Dspark.history.fs.logDirectory=$eventsDir";

exec /sbin/tini -s -- /opt/spark/bin/spark-class org.apache.spark.deploy.history.HistoryServer
