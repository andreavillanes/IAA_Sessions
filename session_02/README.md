## Apache Hive 

1. Build Container
<br>```cd ./IAA_Sessions/docker```
<br>Mac/Linux:  ```./hive_build.sh```
<br>Windows:    Double-click on ```hive_build.bat```

2. Run Container
```./hive_run.sh```

3. Connect to Container
```docker exec -it hadoop-master bash```

4. Within the Container - Load into HDFS
```./hive_example_1_load_data.sh```

5. Within the Container - Connect to Hive via JDBC
```./connect_to_hive.sh```

6. Execute Hive SQL, found here:
https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/hive/assets/hive_example_2_query.sql

More scripts and examples found here:
<br>https://github.com/zaratsian/Apache_Hive
<br>https://github.com/zaratsian/HDP_Tuning_Unofficial

## Apache Phoenix (HBase)

1. Build Container
<br>```cd ./IAA_Sessions/docker```
<br>Mac/Linux:  ```./phoenix_build.sh```
<br>Windows:    Double-click on ```phoenix_build.bat```

2. Run Container
```./phoenix_run.sh```

3. Connect to Container
```docker exec -it phoenix bash```

4. Start Services (Apache HBase and PHoenix Query Server)
```./start_services.sh```

5. Within the Container - Connect to Phoenix
```./connect_to_phoenix.sh```

6. Within the Container, run Phoenix commands to create empty tables. Syntax shown here:
https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/phoenix/assets/1_create_phoenix_tables.sql

7. Within the Container, exit the phoenix shell and load CSV into the tables (from the bash shell):
```./2_load_csvs.sh```

8. Within the Container - Connect to Phoenix (again)
```./connect_to_phoenix.sh```

9. Within Container - Execute Phoenix Queries. Syntax shown here:
https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/phoenix/assets/3_phoenix_queries.sql

## Apache Spark

1. Build Container
<br>```cd ./IAA_Sessions/docker```
<br>Mac/Linux:  ```./spark_build.sh```
<br>Windows:    Double-click on ```spark_build.bat```

2. Run Container
```./spark_run.sh```

3. Connect to Container
```docker exec -it spark bash```

4. Within the Container - Connect to PySpark
```/spark/bin/pyspark --deploy-mode client --master local[*] --name sparksql```

5. Within the Container - Execute SparkSQL Commands. Syntax shown here:
https://github.com/zaratsian/SQLSaturday/blob/master/sql_saturday_sparksql.py


