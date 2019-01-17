

#######################################################################################
#
#   Spark Structured Streaming (integrated with Apache Kafka)
#
#######################################################################################
'''
/spark/bin/pyspark --packages org.apache.spark:spark-sql-kafka-0-10_2.11:2.3.2
'''


import datetime
from pyspark.sql import SparkSession
from pyspark.sql import functions as F
from pyspark.sql.types import *


'''
{ 
  "event_name": "AI Saturday Weekly Meetup",
  "event_url": "https://www.meetup.com/AI6-Lagos/events/258154688/", 
  "venue" : {
        "lat": "6.55176",
        "lon": "3.376872",
        "name": "ZONE TECH PARK"
  },
  "group" : { 
        "group_city" : "Lagos",
        "group_country" : "ng",
        "group_name" : "AI6 Lagos",
        "group_state" : "",
        "urlkey":"data-analytics",
        "topic_name":"Data Analytics" 
   } 
}
'''

# JSON Schema
schema = schema = StructType([
        StructField("event_name", StringType(), False),
        StructField("event_url", StringType(), False),
        StructField("venue", 
            StructType([
                StructField("lat", StringType(), True),
                StructField("lon", StringType(), True),
                StructField("venue_name", StringType(), True)
            ]),
        True),
        StructField("group", 
            StructType([
                StructField("group_city", StringType(), True),
                StructField("group_country", StringType(), True),
                StructField("group_name", StringType(), True),
                StructField("group_state", StringType(), True),
                StructField("urlkey", StringType(), True),
                StructField("topic_name", StringType(), True)
            ]),
        True)
    ])


# Create Kafka Source for Streaming Queries 
sdf = spark \
  .readStream \
  .format("kafka") \
  .option("kafka.bootstrap.servers", "kafka.dev:9092") \
  .option("subscribe", "dztopic1") \
  .load() \
  .select(F.from_json(F.col("value").cast("string"), schema).alias("parsed_value"))



# Check for streaming data
#sdf.isStreaming()

# Print Schema
sdf.printSchema()

# Cast key-value stream
#sdf.selectExpr("CAST(key AS STRING)", "CAST(value AS STRING)")

# Extract each column / field
sdf = sdf.withColumn('event_name',        sdf.parsed_value.event_name) \
        .withColumn('event_url',    sdf.parsed_value.event_url) \
        .withColumn('lat',          sdf.parsed_value.venue.lat) \
        .withColumn('lon',          sdf.parsed_value.venue.lon) \
        .withColumn('venue_name',   sdf.parsed_value.venue.venue_name) \
        .withColumn('group_city',   sdf.parsed_value.group.group_city) \
        .withColumn('group_country',sdf.parsed_value.group.group_country) \
        .withColumn('group_name',   sdf.parsed_value.group.group_name) \
        .withColumn('group_state',  sdf.parsed_value.group.group_state) \
        .withColumn('urlkey',       sdf.parsed_value.group.urlkey) \
        .withColumn('topic_name',   sdf.parsed_value.group.topic_name) \
        .withColumn('timestamp',    datetime.datetime.now()) \
        .drop('parsed_value')

# Setup windowed aggregation
windowedCounts = sdf.groupBy(
    window(sdf.timestamp, "1 minutes", "5 seconds"),
    words.word
).count()

# Write stream to endpoint (in this case, it is an in-memory DStream DF)
q1 = sdf \
    .writeStream \
    .queryName("q1")\
    .format("memory")\
    .start()

# Write stream to endpoint (in this case, it is an in-memory DStream DF)
q1_window = sdf \
    .writeStream \
    .queryName("q1_window")\
    .format("memory")\
    .start()

# Query the in-memory DStream DF
spark.sql('''select * from q1''').show(10,False)

# Move the streaming DStream DF to a normal Pyspark DF
df = spark.sql('''select * from q1''')


#ZEND
