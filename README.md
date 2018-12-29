very-very simple project. Just a docker-compose infrastructure + hello world for Spark
# Docker Zeppelin

This repository contains [Apache Zeppelin](https://zeppelin.apache.org/) docker image, which is tuned to work with BDE clusters.

# Example Usage
```
docker-compose up sbt # will compile scala project into ja file /jars/sparkjob_2.11-0.1.jar
docker-compose run spark-master /spark/bin/spark-submit --verbose --master local /jars/sparkjob_2.11-0.1.jar
```

# Output
```
...
18/12/29 23:01:41 INFO handler.ContextHandler: Started o.s.j.s.ServletContextHandler@3af37506{/metrics/json,null,AVAILABLE,@Spark}
############################
############################
########HELLO WORLD#########
############################
############################
18/12/29 23:01:41 INFO server.ServerConnector: Stopped Spark@759fad4{HTTP/1.1}{0.0.0.0:4040}
...
```
