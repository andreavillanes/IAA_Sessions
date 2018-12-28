## IAA Module - Session 1 - Platform Overview

Google Slides

## Demo: Hortonworks Data Platform

For this demo, I am using [Cloudbreak](https://docs.hortonworks.com/HDPDocuments/Cloudbreak/Cloudbreak-2.7.2/index.html) to provision and deploy the [Hortonworks](https://docs.hortonworks.com) Apache tech stack across a set of [Google Cloud](https://cloud.google.com/) Instances.

For single-machine, quick prototyping, you could also use the [Hortonworks Sandbox](https://hortonworks.com/products/sandbox/), which is available as VMWare, VirtualBox, or a Docker container.

Login to Cloudbreak (based on external IP of Cloudbreak VM instance):
user_email: ```admin@cloudbreak.com```
password: ```cloudbreak123```

## Demo: Google Cloud Dataproc

To Launch a Google Cloud Dataproc cluster, execute:
```
./dataproc_1_create_cluster.sh
```
To run a test PySpark script, run:
```
./dataproc_2_spark_submit.sh
```
Demo flow once Dataproc has launched:
```
# PySpark Shell, connected as Client to Yarn master
/usr/lib/spark/bin/pyspark --deploy-mode client --master yarn --name spark_example
```
```
# Manually run ./spark_test_script.py within the PySpark shell
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
/usr/lib/hive/bin/hive
```
