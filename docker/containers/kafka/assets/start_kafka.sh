
# Kafka Startup Script

########################
# Start Zookeeper
########################
/kafka/bin/zookeeper-server-start.sh /kafka/config/zookeeper.properties &
sleep 5


########################
# Start Kafka Server
########################
/kafka/bin/kafka-server-start.sh /kafka/config/server.properties &
sleep 5


########################
# Create Kafka Topic
########################
/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic dztopic1
/kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --list


echo ""
echo ""
echo "#######################"
echo "#  Startup Complete!"
echo "#######################"
echo ""
echo ""
echo "CMD Line Producer:"
echo "echo "DZ Kafka Event at $(date)" | /kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic dztopic1 > /dev/null"
echo ""
echo ""
echo "CMD Line Consumer:"
echo "/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic dztopic1 --from-beginning"
echo ""
echo ""


#ZEND
