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

RUN yum install -y ${JAVA_VER}
RUN echo "export JAVA_HOME=/usr/lib/jvm/java" >> /root/.bashrc

RUN yum install -y wget
RUN yum install -y unzip
RUN yum install -y net-tools
RUN yum install -y git

######################################################################################################
#
#   Kafka
#
######################################################################################################

RUN wget ${KAFKA_URL} -O /kafka.tgz
RUN tar -xzvf /kafka.tgz
RUN mv kafka_* /kafka

ADD assets /assets

#ZEND
