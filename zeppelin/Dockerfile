ARG BASE_IMAGE
FROM ${BASE_IMAGE}

ENV APACHE_SPARK_VERSION 2.3.1
ENV APACHE_HADOOP_VERSION 2.8.5
ENV ZEPPELIN_VERSION 0.8.0

RUN apt-get update && apt-get install wget
RUN set -x \
    && curl -fSL "http://www.apache.org/dist/zeppelin/zeppelin-${ZEPPELIN_VERSION}/zeppelin-${ZEPPELIN_VERSION}-bin-all.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzf /tmp/zeppelin.tgz -C /opt/ \
    && mv /opt/zeppelin-* /opt/zeppelin \
    && rm /tmp/zeppelin.tgz

ENV SPARK_SUBMIT_OPTIONS ""

WORKDIR /opt/zeppelin

CMD ["/opt/zeppelin/bin/zeppelin.sh"]
