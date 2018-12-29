docker stop spark_240
docker rm -f spark_240

docker run -it -d -p 18080:8080 -e SPARK_LOCAL_HOSTNAME=localhost --hostname spark_240 --net dev --name spark_240 spark_240

# Start Zeppelin (running on localhost port 18080)
docker exec spark_240 /zeppelin/bin/zeppelin-daemon.sh start  

# Copy Assets
docker cp containers/spark_240/assets spark_240:/.

# Execute PySpark Test Script
docker exec spark_240 sh -c "/spark/bin/spark-submit /assets/spark_test_script.py" 

echo "*****************************************************"
echo "*"
echo "*  Spark Container has been started..."
echo "*"
echo "*  Port (Zeppelin):  18080"
echo "*"
echo "*  Usage: docker exec -it spark_240 bash"
echo "*"
echo "*****************************************************"
echo ""
echo ""
