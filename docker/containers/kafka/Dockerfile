FROM centos

######################################################################################################
#
#   Vars
#
######################################################################################################

ARG JAVA_VER=java-1.8.0-openjdk-devel
ARG KAFKA_URL=https://archive.apache.org/dist/kafka/2.1.0/kafka_2.11-2.1.0.tgz

######################################################################################################
#
#   Dependancies
#
######################################################################################################

RUN yum install -y ${JAVA_VER} wget unzip net-tools git && \
    echo "export JAVA_HOME=/usr/lib/jvm/java" >> /root/.bashrc && \
    wget ${KAFKA_URL} -O /kafka.tgz && \
    tar -xzvf /kafka.tgz && \
    mv kafka_* /kafka

ADD assets /assets

#ZEND
