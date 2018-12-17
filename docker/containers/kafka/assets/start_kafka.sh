source /root/.bashrc

KAFKA_HOME=/kafka

echo ""
echo ""
echo "Starting Kafka..."
$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties &
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties &
echo ""
echo ""
echo "Creating Kafka topic..."
$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic dztopic1
$KAFKA_HOME/bin/kafka-topics.sh --zookeeper localhost:2181 --list
echo ""
echo ""
echo "Installing python kafka and pip..."
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
pip install kafka-python
echo ""
echo "#######################"
echo "#  Startup Complete!"
echo "#######################"
echo ""
echo "CMD Line Producer:"
echo "echo "DZ Kafka Event at $(date)" | /kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic dztopic1 > /dev/null"
echo ""
echo "CMD Line Consumer:"
echo "/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic dztopic1 --from-beginning"
echo ""
