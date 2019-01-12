
[Google Slides](https://docs.google.com/presentation/d/1zB7K2ud91WOKuCENic4WNLz6lSqJ0yUbijYQJ3HbFU0/edit?usp=sharing)

## Apache Hive 

1. If you have not already done so, clone (or download) this [github repo](https://github.com/zaratsian/IAA_Sessions). You can manually download the zip from [here](https://github.com/zaratsian/IAA_Sessions/archive/master.zip). Unzip the directory to a location that you can remember. If you have git locally installed, you can run this command:
```
git clone https://github.com/zaratsian/IAA_Sessions.git
```

2. Build Container
<br>```cd ./IAA_Sessions/docker```
<br>Mac/Linux:  ```./hive_build.sh```
<br>Windows:    Double-click on ```hive_build.bat```

3. Run Container
<br>```./hive_run.sh```

4. Connect to Container
<br>```docker exec -it hadoop-master bash```

5. Within the Container - Load into HDFS
<br>```./hive_example_1_load_data.sh```

6. Within the Container - Connect to Hive via JDBC
<br>```./connect_to_hive.sh```

7. Execute Hive SQL, found here:
<br>https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/hive/assets/hive_example_2_query.sql

More scripts and examples found here:
<br>https://github.com/zaratsian/Apache_Hive
<br>https://github.com/zaratsian/HDP_Tuning_Unofficial

## Apache Phoenix (HBase)

1. If you have not already done so, clone (or download) this [github repo](https://github.com/zaratsian/IAA_Sessions). You can manually download the zip from [here](https://github.com/zaratsian/IAA_Sessions/archive/master.zip). Unzip the directory to a location that you can remember. If you have git locally installed, you can run this command:
```
git clone https://github.com/zaratsian/IAA_Sessions.git
```

2. Build Container
<br>```cd ./IAA_Sessions/docker```
<br>Mac/Linux:  ```./phoenix_build.sh```
<br>Windows:    Double-click on ```phoenix_build.bat```

3. Run Container
<br>```./phoenix_run.sh```

4. Connect to Container
<br>```docker exec -it phoenix bash```

5. Start Services (Apache HBase and PHoenix Query Server)
<br>```./start_services.sh```

6. Within the Container - Connect to Phoenix
<br>```./connect_to_phoenix.sh```

7. Within the Container, run Phoenix commands to create empty tables. Syntax shown here:
<br>https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/phoenix/assets/phoenix_1_create_tables.sql.sql

8. Within the Container, exit the phoenix shell and load CSV into the tables (from the bash shell):
<br>```./phoenix_2_load_csvs.sh```

9. Within the Container - Connect to Phoenix (again)
<br>```./connect_to_phoenix.sh```

10. Within Container - Execute Phoenix Queries. Syntax shown here:
<br>https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/phoenix/assets/phoenix_3_queries.sql

More scripts and examples found here:
<br>https://github.com/zaratsian/HBase_Phoenix
<br>https://github.com/zaratsian/SparkPhoenix

## Apache Spark

1. If you have not already done so, clone (or download) this [github repo](https://github.com/zaratsian/IAA_Sessions). You can manually download the zip from [here](https://github.com/zaratsian/IAA_Sessions/archive/master.zip). Unzip the directory to a location that you can remember. If you have git locally installed, you can run this command:
```
git clone https://github.com/zaratsian/IAA_Sessions.git
```

2. Build Container
<br>```cd ./IAA_Sessions/docker```
<br>Mac/Linux:  ```./spark_build.sh```
<br>Windows:    Double-click on ```spark_build.bat```

3. Run Container
<br>```./spark_run.sh```

4. Open up Chrome (or another browser) and go to [http://localhost:18080](http://localhost:18080). [Apache Zeppelin](https://zeppelin.apache.org/) should open up within the browser, along with several preloaded notebooks that enables you to run and edit code interactively.

5. Run the notebooks from within Apache Zeppelin (which is a browser-based code editor). The notebooks that you can run include **Getting Started - Python**, **Flight Predictor - Python**, and **Movie Text Analytics - Python**

**Alnatively, you can run commands from the command line**

4. Connect to Container
<br>```docker exec -it spark bash```

5. Within the Container - Connect to PySpark
<br>```/spark/bin/pyspark --deploy-mode client --master local[*] --name sparksql```

6. Within the Container - Execute SparkSQL Commands. Syntax shown here:
<br>https://github.com/zaratsian/IAA_Sessions/blob/master/session_02/spark_sql_example.py

More scripts and examples found here:
https://spark.apache.org/docs/latest/sql-getting-started.html
https://github.com/zaratsian/Spark
