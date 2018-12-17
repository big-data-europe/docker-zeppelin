FROM bde2020/spark-base:2.3.1-hadoop2.8
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>
MAINTAINER Gezim Sejdiu <g.sejdiu@gmail.com>

ENV APACHE_SPARK_VERSION 2.3.1
ENV APACHE_HADOOP_VERSION 2.8.0
ENV ZEPPELIN_VERSION 0.8.0

RUN apt-get update && apt-get install wget
RUN set -x \
    && curl -fSL "http://www-eu.apache.org/dist/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C /opt/ \
    && mv /opt/zeppelin-* /opt/zeppelin \
    && rm /tmp/zeppelin.tgz

ENV SPARK_SUBMIT_OPTIONS "--jars /opt/zeppelin/sansa-examples-spark-2018-06.jar"

WORKDIR /opt/zeppelin

CMD ["/opt/zeppelin/bin/zeppelin.sh"]
