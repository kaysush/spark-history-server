# Spark History Server
This repository hosts the Dockerfile for Spark History Server.

Its a companion repository for my medium blog [here](https://medium.com/@Sushil_Kumar/persistent-spark-history-server-with-transient-dataproc-clusters-4db2d9a2696b).

This image use the Spark 2.4.0 image from Google which they use for their Spark Operator and adds GCS Hadoop connector to read event logs from buckets. 

This repository also serves as an example for setting up CI with Github Actions.
