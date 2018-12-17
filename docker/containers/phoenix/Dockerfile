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
#   HBase and Phoenix
#
######################################################################################################

# Setup HBase binaries
RUN wget -nv ${HBASE_URL} -O /hbase.tgz
RUN tar -xzvf /hbase.tgz
RUN mv hbase-* /hbase

# Setup Phoenix binaries
RUN wget -nv ${PHOENIX_URL} -O /phoenix.tgz
RUN tar -xzvf /phoenix.tgz
RUN mv /apache-phoenix-* /phoenix
RUN cp /phoenix/phoenix-4.8.1-HBase-1.1-server.jar /hbase/lib

######################################################################################################

ADD assets /assets
ADD assets/start_services.sh /start_services.sh
ADD conf /hbase/conf

#ZEND
