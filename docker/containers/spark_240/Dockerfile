FROM centos

######################################################################################################
#
#   Vars
#
######################################################################################################

ARG JAVA_VER=java-1.8.0-openjdk-devel
ARG ANACONDA_URL=https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
ARG SPARK_URL=https://archive.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
ARG ZEPPELIN_URL=https://archive.apache.org/dist/zeppelin/zeppelin-0.8.0/zeppelin-0.8.0-bin-all.tgz

######################################################################################################
#
#   Dependancies
#
######################################################################################################

RUN yum install -y ${JAVA_VER} epel-release wget unzip net-tools git && \
    wget ${SPARK_URL} -O /spark.tgz && \
    tar -xzvf spark.tgz && \
    mv /spark-* /spark && \
    rm /spark.tgz && \
    wget ${ZEPPELIN_URL} -O /zeppelin.tgz && \
    tar -xzvf zeppelin.tgz && \
    mv /zeppelin-* /zeppelin && \
    echo "export SPARK_HOME=/spark" >> /zeppelin/conf/zeppelin-env.sh && \
    rm /zeppelin.tgz && \
    yum -y install bzip2 && \
    echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet ${ANACONDA_URL} -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh

RUN echo "export JAVA_HOME=/usr/lib/jvm/java" >> /root/.bashrc

######################################################################################################
#
#   Assets
#
######################################################################################################

ADD assets /assets


#CMD source /root/.bashrc; cd /spark; /zeppelin/bin/zeppelin-daemon.sh start; superset runserver
