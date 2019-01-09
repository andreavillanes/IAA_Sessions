docker stop spark
docker rm -f spark

docker run -it -d -p 18080:8080 -e SPARK_LOCAL_HOSTNAME=localhost --hostname spark --net dev --name spark spark

# Start Zeppelin (running on localhost port 18080)
docker exec spark /zeppelin/bin/zeppelin-daemon.sh start

# Copy Assets
docker cp containers/spark/assets spark:/.
docker cp data spark:/.
docker cp containers/spark/assets/notebook spark:/zeppelin/.
docker cp containers/spark/assets/interpreter.json spark:/zeppelin/conf/.
docker cp containers/spark/assets/zeppelin-env.sh spark:/zeppelin/conf/.

# Execute PySpark Test Script
docker exec spark sh -c "/spark/bin/spark-submit /assets/spark_test_script.py" 

echo "*****************************************************"
echo "*"
echo "*  Spark Container has been started..."
echo "*"
echo "*  Port (Zeppelin):  18080"
echo "*  Zeppelin Notebook should be running at http://localhost:18080"
echo "*"
echo "*  Usage: docker exec -it spark bash"
echo "*"
echo "*****************************************************"
echo ""
echo ""
