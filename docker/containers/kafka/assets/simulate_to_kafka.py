
#####################################################################
#
#   Data Simulator for Apache Kafka
#
#   Test with python 3.7
#   https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
#
#   Prereqs:
#   pip install kafka-python
#
#####################################################################

from kafka import KafkaProducer
import json
import re
import datetime, time


time_delay = 1      # Second(s)


#producer = KafkaProducer(bootstrap_servers=['localhost:9092'])                         # String-based Producer
producer = KafkaProducer(value_serializer=lambda v: json.dumps(v).encode('utf-8'))      # JSON-based Producer


counter = 0
while True:
    
    counter += 1
    
    #producer.send('dztopic1', 'test message {}'.format(i).encode('utf-8') )    # String-based kafka commit
    producer.send('dztopic1', value={'test_message':'msg sent at {}'.format(datetime.datetime.now())})  # JSON-based kafka commit
    
    time.sleep(time_delay)



