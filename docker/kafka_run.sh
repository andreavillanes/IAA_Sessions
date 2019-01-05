docker stop kafka
docker rm -f kafka

docker run -it -d --hostname kafka --net dev --name kafka kafka

# Copy Assets
docker cp containers/kafka/assets kafka:/.
docker cp containers/kafka/assets/start_kafka.sh kafka:/. 


echo "*****************************************************"
echo "*"
echo "*  Kafka Container has been started..."
echo "*"
echo "*  Port (Zookeeper):  2181"
echo "*"
echo "*  Usage: docker exec -it kafka bash"
echo "*"
echo "*****************************************************"
