1.) /usr/lib/spark/bin/pyspark

2.) Run spark_test_script.py (in shell)

3.) Save sim as table:
    sim.write.saveAsTable('sim_table')
    sim.write.format('orc').saveAsTable('sim_table_orc')

4.) Execute Queries in Hive
    /usr/lib/hive/bin/beeline -u jdbc:hive2://localhost:10000/default
    /usr/lib/hive/bin/hive
