## Apache Hive 

Build Container
```cd ./IAA_Sessions/docker```
Mac/Linux:  ```./hive_build.sh``` 
Windows:    Double-click on ```hive_build.bat```

Run Container
```./hive_run.sh```

Connect to Container
```docker exec -it hadoop-master bash```

# Within the Container - Load into HDFS
```./hive_example_1_load_data.sh```

# Within the Container - Connect to Hive via JDBC
```./connect_to_hive.sh```

# Execute Hive SQL, found here:
https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/hive/assets/hive_example_2_query.sql

# More scripts and examples found here:
https://github.com/zaratsian/Apache_Hive
https://github.com/zaratsian/HDP_Tuning_Unofficial

## Apache Phoenix (HBase)

Build Container
cd ./IAA_Sessions/docker
Mac/Linux:  ```./phoenix_build.sh```
Windows:    Double-click on ```phoenix_build.bat```

Run Container
```./phoenix_run.sh```

Connect to Container
```docker exec -it phoenix bash```

Start Services (Apache HBase and PHoenix Query Server)
```./start_services.sh```

Within the Container - Connect to Phoenix
```./connect_to_phoenix.sh```

Within the Container, run Phoenix commands to create empty tables. Syntax shown here:
https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/phoenix/assets/1_create_phoenix_tables.sql

Within the Container, exit the phoenix shell and load CSV into the tables (from the bash shell):
./2_load_csvs.sh

Within the Container - Connect to Phoenix (again)
./connect_to_phoenix.sh 

Within Container - Execute Phoenix Queries. Syntax shown here:
https://github.com/zaratsian/IAA_Sessions/blob/master/docker/containers/phoenix/assets/3_phoenix_queries.sql

## Apache Spark

Build Container
```cd ./IAA_Sessions/docker```
Mac/Linux:  ```./spark_build.sh```
Windows:    Double-click on ```spark_build.bat```

Run Container
```./spark_run.sh```

Connect to Container
```docker exec -it spark bash```

Within the Container - Connect to PySpark
```/spark/bin/pyspark --deploy-mode client --master local[*] --name sparksql```

Within the Container - Execute SparkSQL Commands. Syntax shown here:
https://github.com/zaratsian/SQLSaturday/blob/master/sql_saturday_sparksql.py


