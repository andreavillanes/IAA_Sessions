## Spark Basics Assignment

The purpose of this assignment is to allow you to write some Spark starter code, learn to navigate the Spark Documentation page, and think through the Spark syntax.

Here's what I want you to do:

1)  Load a CSV file into a spark dataframe. You can use any data that you'd like, however, if you are using my Docker container, I already have data loaded within the /data directory (/data/tmdb_5000_movies.csv and /data/nyc_taxi_data.csv)

2)  Display (show) the top 15 records for that spark dataframe that you just loaded. 

3)  Display the total number of records in the spark dataframe.

4)  Filter the spark dataframe (I'll let you choose what column(s) you want to filter on).

5)  Perform a [groupby](https://spark.apache.org/docs/latest/api/python/pyspark.sql.html#pyspark.sql.DataFrame.groupBy) (aggregation) that sums one of your numeric variables within a category that you choose. 

You can write this code in any code editor that you choose (i.e. PyCharm, Visual Studio Code, notepad, Jupyter, or Zeppelin). 

If you need to make assumptions, please add those as comments to your code. Anything above what I listed here will be considered bonus. 

If you need some help, here are examples:
* [Zeppelin Notebok - Getting Started - Python 1 (lab - answers)](https://github.com/zaratsian/IAA_Sessions/blob/master/session_03/Getting%20Started%20-%20Python%20(lab%20-%20answers).json)
* [NYCTaxi_PySpark.py](https://github.com/zaratsian/Spark/blob/master/NYCTaxi_PySpark.py)

Here's the Spark Documentation:
* [PySpark SQL Functions](https://spark.apache.org/docs/latest/api/python/pyspark.sql.html#pyspark.sql.DataFrame.groupBy)
* [PySpark Programming Guide](https://spark.apache.org/docs/latest/sql-programming-guide.html)

Please email your final code file to me (d.zaratsian@gmail.com) by **Thursday, January 24th at 11:59pm EST**
