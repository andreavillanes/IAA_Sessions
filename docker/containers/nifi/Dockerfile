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

RUN yum install -y ${JAVA_VER} epel-release wget unzip net-tools git && \
    echo "export JAVA_HOME=/usr/lib/jvm/java" >> /root/.bashrc && \
    wget ${NIFI_URL} -O /nifi.tgz && \
    tar -xzvf /nifi.tgz && \
    mv ${NIFI_VER} /nifi && \
    rm /nifi.tgz

ADD assets /assets
ADD assets/start_nifi.sh /start_nifi.sh

#RUN mv /resources/flow.xml.gz /nifi/conf/
#CMD source /root/.bashrc; /nifi/bin/nifi.sh start; tail -f /nifi/logs/nifi-app.log
