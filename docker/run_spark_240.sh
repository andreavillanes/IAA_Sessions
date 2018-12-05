container_name=spark_240

docker stop $container_name
docker rm -f $container_name

docker run -it -d -p 18080:8080 -e SPARK_LOCAL_HOSTNAME=localhost --hostname $container_name --net dev --name $container_name $container_name

# Start Zeppelin (running on localhost port 18080)
docker exec $container_name /zeppelin/bin/zeppelin-daemon.sh start  

# Copy Assets
docker cp containers/spark_240/assets $container_name:/.

# Execute PySpark Test Script
docker exec $container_name sh -c "/spark/bin/spark-submit /assets/spark_test_script.py" 

echo "*****************************************************"
echo "*"
echo "*  Spark Container has been started..."
echo "*"
echo "*  Port (Zeppelin):  18080"
echo "*"
echo "*  Usage: docker exec -it $container_name bash"
echo "*"
echo "*****************************************************"
echo ""
echo ""








