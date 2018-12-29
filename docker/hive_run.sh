docker run -it -d -p 18080:8080 --net dev --name hadoop-master --hostname hadoop-master teradatalabs/cdh5-hive

echo "*****************************************************"
echo "*"
echo "*  Hive Container has been started..."
echo "*"
echo "*  Port (HiveServer2): 10080"
echo "*"
echo "*  Usage: docker exec -it hadoop-master bash"
echo "*"
echo "*****************************************************"
echo ""
echo ""
