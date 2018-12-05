FROM centos

######################################################################################################
#
#   Vars
#
######################################################################################################

ARG JAVA_VER=java-1.8.0-openjdk-devel
ARG NIFI_URL=https://archive.apache.org/dist/nifi/1.8.0/nifi-1.8.0-bin.tar.gz
ARG NIFI_VER=nifi-1.8.0

######################################################################################################
#
#   Dependancies
#
######################################################################################################

RUN yum install -y ${JAVA_VER}
RUN echo "export JAVA_HOME=/usr/lib/jvm/java" >> /root/.bashrc

RUN yum install -y epel-release
RUN yum update -y

RUN yum install -y wget
RUN yum install -y unzip
RUN yum install -y net-tools
RUN yum install -y git

######################################################################################################
#
#    NiFi
#
######################################################################################################

RUN wget ${NIFI_URL} -O /nifi.tgz
RUN tar -xzvf /nifi.tgz
RUN mv ${NIFI_VER} /nifi

ADD assets /assets
ADD assets/start_nifi.sh /start_nifi.sh

#RUN mv /resources/flow.xml.gz /nifi/conf/
#CMD source /root/.bashrc; /nifi/bin/nifi.sh start; tail -f /nifi/logs/nifi-app.log
