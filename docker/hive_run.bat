@echo on

docker stop hadoop-master
docker rm hadoop-master

docker run -it -d -p 50010:50010 -p 8020:8020 -p 8021:8021 -p 8088:8088 -p 10000:10000  --net dev --name hadoop-master --hostname hadoop-master teradatalabs/cdh5-hive

docker cp containers/hive/assets/ hadoop-master:/
docker cp data hadoop-master:/
docker cp containers/hive/assets/connect_to_hive.sh hadoop-master:/.
docker cp containers/hive/assets/hive_example_1_load_data.sh hadoop-master:/.
docker cp containers/hive/assets/hive_example_2_query.sql hadoop-master:/.

echo "*****************************************************"
echo "*"
echo "*  Hive Container has been started..."
echo "*"
echo "*  Port (HiveServer2): 10080"
echo "*"
echo "*  Usage: docker exec -it hadoop-master bash"
echo "*"
echo "*****************************************************"
