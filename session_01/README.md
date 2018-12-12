<br><b>1.) /usr/lib/spark/bin/pyspark</b>
<br>
<br><b>2.) Run spark_test_script.py (in shell)</b>
<br>
<br><b>3.) Save sim as table:</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;sim.write.saveAsTable('sim_table')
<br>&nbsp;&nbsp;&nbsp;&nbsp;sim.write.format('orc').saveAsTable('sim_table_orc')

<br><b>4.) Execute Queries in Hive</b>
<br>&nbsp;&nbsp;&nbsp;&nbsp;/usr/lib/hive/bin/beeline -u jdbc:hive2://localhost:10000/default
<br>&nbsp;&nbsp;&nbsp;&nbsp;/usr/lib/hive/bin/hive
<br>
