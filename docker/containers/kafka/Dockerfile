FROM centos

ARG KAFKA_URL=https://archive.apache.org/dist/kafka/2.1.0/kafka_2.11-2.1.0.tgz
ARG KAFKA_VER=kafka_2.11-2.1.0.tgz

RUN wget ${KAFKA_URL} -O /kafka.tgz
RUN tar -xzvf /kafka.tgz
RUN mv ${KAFKA_VER} /kafka

ADD assets /assets
ADD assets/start_kafka.sh /start_kafka.sh

