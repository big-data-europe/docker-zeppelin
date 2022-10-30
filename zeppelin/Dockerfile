FROM bde2020/spark-base:3.2.2-hadoop3.2
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

ENV APACHE_SPARK_VERSION 3.3.0
ENV APACHE_HADOOP_VERSION 3.3.3
ENV ZEPPELIN_VERSION 0.10.1

#RUN apt-get update && apt-get install wget
RUN set -x \
    && curl -fSL "https://dlcdn.apache.org/zeppelin/zeppelin-0.10.1/zeppelin-0.10.1-bin-all.tgz" -o /tmp/zeppelin.tgz \
    && tar -xzvf /tmp/zeppelin.tgz -C /opt/ \
    && mv /opt/zeppelin-* /opt/zeppelin \
    && rm /tmp/zeppelin.tgz


#RUN apk add --update --no-cache \
#    wget \
#    gcc \
#    make \
#    cmake \
#    gcc \
#    g++ \
#    gfortran \
#    zlib-dev \
#    libffi-dev \
#    openssl-dev \
#    musl-dev \
#    linux-headers \
#    g++ \
#    python3 \
#    python3-dev \
#    py3-pip \
#    build-base
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
#RUN apk add --no-cache --update freetype freetype-dev
#ENV SPARK_SUBMIT_OPTIONS "--jars /opt/zeppelin/sansa-examples-spark-2016-12.jar"
#ENV PYTHONHASHSEED 1
#ENV PYTHONUNBUFFERED=1
#RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
#RUN python -m ensurepip
#RUN pip3 install --no-cache --upgrade pip setuptools
#RUN pip3 install --no-cache --upgrade wheel pyproject.toml
#RUN pip3 install --no-cache --upgrade  cython
#RUN pip3 install --no-cache --upgrade  numpy
#RUN apk add --update --no-cache py3-packaging py3-wheel
#RUN apt update && apt install libfreetype6-dev

#RUN pip3 install --no-cache --upgrade matplotlib
#RUN pip3 install --no-cache --upgrade jupyter
#RUN pip3 install --no-cache --upgrade grpcio
#RUN pip3 install --no-cache --upgrade protobuf
#RUN pip3 install --no-cache --upgrade ipykernel

WORKDIR /opt/zeppelin

CMD ["/opt/zeppelin/bin/zeppelin.sh"]
