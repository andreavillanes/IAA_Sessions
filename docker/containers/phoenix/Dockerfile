FROM centos

######################################################################################################
#
#   Vars
#
######################################################################################################

ARG JAVA_VER=java-1.8.0-openjdk-devel
ARG HBASE_URL=https://archive.apache.org/dist/hbase/1.1.7/hbase-1.1.7-bin.tar.gz
ARG PHOENIX_URL=https://archive.apache.org/dist/phoenix/apache-phoenix-4.8.1-HBase-1.1/bin/apache-phoenix-4.8.1-HBase-1.1-bin.tar.gz

######################################################################################################
#
#   Install Dependancies
#
######################################################################################################

RUN yum install -y ${JAVA_VER} wget unzip net-tools git && \
    wget -nv ${HBASE_URL} -O /hbase.tgz && \
    tar -xzvf /hbase.tgz && \
    mv hbase-* /hbase && \
    wget -nv ${PHOENIX_URL} -O /phoenix.tgz && \
    tar -xzvf /phoenix.tgz && \
    mv /apache-phoenix-* /phoenix && \
    cp /phoenix/phoenix-4.8.1-HBase-1.1-server.jar /hbase/lib 

RUN echo "export JAVA_HOME=/usr/lib/jvm/java" >> /root/.bashrc

######################################################################################################
#
#   Assets
#
######################################################################################################

ADD assets /assets
ADD assets/start_services.sh /start_services.sh
ADD conf /hbase/conf

#ZEND
