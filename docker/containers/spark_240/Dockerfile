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
#   Install Spark
#
######################################################################################################

RUN wget ${SPARK_URL} -O /spark.tgz
RUN tar -xzvf spark.tgz
RUN mv /spark-* /spark
RUN rm /spark.tgz

######################################################################################################
#
#   Install Zeppelin
#
######################################################################################################

RUN wget ${ZEPPELIN_URL} -O /zeppelin.tgz
RUN tar -xzvf zeppelin.tgz
RUN mv /zeppelin-* /zeppelin
RUN echo "export SPARK_HOME=/spark" >> /zeppelin/conf/zeppelin-env.sh
RUN rm /zeppelin.tgz

######################################################################################################
#
#   Install Anaconda
#
######################################################################################################

#RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
#RUN python get-pip.py
#RUN rm get-pip.py
RUN yum -y install bzip2
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet ${ANACONDA_URL} -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh

######################################################################################################
#
#   Assets
#
######################################################################################################

ADD assets /assets


#CMD source /root/.bashrc; cd /spark; /zeppelin/bin/zeppelin-daemon.sh start; superset runserver
