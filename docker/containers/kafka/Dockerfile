FROM centos

######################################################################################################
#
#   Vars
#
######################################################################################################

ARG JAVA_VER=java-1.8.0-openjdk-devel
ARG KAFKA_URL=https://archive.apache.org/dist/kafka/2.1.0/kafka_2.11-2.1.0.tgz
ARG ANACONDA_URL=https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

######################################################################################################
#
#   Dependancies
#
######################################################################################################

RUN yum install -y ${JAVA_VER} wget unzip net-tools git && \
    echo "export JAVA_HOME=/usr/lib/jvm/java" >> /root/.bashrc && \
    wget ${KAFKA_URL} -O /kafka.tgz && \
    tar -xzvf /kafka.tgz && \
    mv kafka_* /kafka && \
    yum -y install bzip2 && \
    echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet ${ANACONDA_URL} -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh && \
    /opt/conda/bin/pip install kafka-python 

ADD assets /assets

#ZEND
