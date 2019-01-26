## IAA Module - Session 1 - Platform Overview

[Google Slides](https://docs.google.com/presentation/d/1CC03MXct8pW9DblZ4i7sICcYlbXg81xgyB1DLtDh_ig/edit?usp=sharing)

## Demo: Hortonworks Data Platform

For this first demo, I am using [Cloudbreak](https://docs.hortonworks.com/HDPDocuments/Cloudbreak/Cloudbreak-2.7.2/index.html) to provision and deploy a [Hortonworks](https://docs.hortonworks.com) (Hadoop plus other apache services) across a set of [Google Cloud](https://cloud.google.com/) GCE instances.

For single-machine (quick prototyping) you could use [Google Dataproc](https://cloud.google.com/dataproc/) or the [Hortonworks Sandbox VM](https://hortonworks.com/products/sandbox/), which is available as VMWare, VirtualBox, or a Docker container.

1) This command was used to start a new GCP Cloudbreak Deployment (within Deployment Manager):
```
gcloud deployment-manager deployments create cbd-deployment --config=/home/dtz001/github/cbd-quickstart/gcp/vm_template_config.yaml
```

2) Login to Cloudbreak, then config the cluster services:
user_email: ```admin@cloudbreak.com```
password: ```cloudbreakz1```

## Demo: Google Cloud Dataproc

The second demo will demonstrate how to quickly deploy a Hadoop cluster using Google Cloud (specifically [Google Dataproc](https://cloud.google.com/dataproc/)). The cluster should spin up in about 2 minutes, and includes services such as Hadoop/HDFS, Hive, Spark, and others.

1) To Launch a Google Cloud Dataproc cluster, execute these commands:
```
git clone https://github.com/zaratsian/IAA_Sessions.git
cd IAA_Sessions/session_01/
```
2) Create the 3+ node cluster (with parameters as specified in the bash script)
```
./dataproc_1_create_cluster.sh
```
3) Run a test PySpark script, run:
```
./dataproc_2_spark_submit.sh
```
4) Step through this demo flow once Dataproc has launched:
```
# PySpark Shell - Connected as client to the  Yarn master
/usr/lib/spark/bin/pyspark --deploy-mode client --master yarn --name spark_example
```
```
# Step through ./spark_test_script.py within the PySpark shell

# Optional: For testing purposes, you can also create a Spark DF from python lists:
df = spark.createDataFrame([(1,'nc'),(2,'ca'),(3,'ny')], ['id','state'])
```
```
# Save sim DF as table
sim.write.mode("overwrite").saveAsTable('sim_table')
sim.write.mode("overwrite").format('orc').saveAsTable('sim_table_orc')
```
```
# Execute queries in Hive
/usr/lib/hive/bin/beeline -u jdbc:hive2://localhost:10000/default
# It's recommended to use the JDBC connection, but you can also directly connect to hive via:
#/usr/lib/hive/bin/hive

show tables;
describe formatted sim_table;
```

## Docker Setup

We'll step through the process in class.

As a reference, you can refer to [these instructions](https://github.com/zaratsian/IAA_Sessions/blob/master/setup_and_installation.md) when installing Docker and getting setup, which describes the process of installing Docker, cloning my Github repo, building it, and then running the Docker container(s).
