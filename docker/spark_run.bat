@echo on

docker stop spark
docker rm -f spark

docker run -it -d -p 18080:8080 -e SPARK_LOCAL_HOSTNAME=localhost --hostname spark --net dev --name spark spark

docker exec spark /zeppelin/bin/zeppelin-daemon.sh start

docker cp containers/spark/assets spark:/.
docker cp data spark:/.
docker cp containers/spark/assets/notebook spark:/zeppelin/.
docker cp containers/spark/assets/interpreter.json spark:/zeppelin/conf/.
docker cp containers/spark/assets/zeppelin-env.sh spark:/zeppelin/conf/.

docker exec spark sh -c "/spark/bin/spark-submit /assets/spark_test_script.py" 

echo "*****************************************************"
echo "*"
echo "*  Spark Container has been started..."
echo "*"
echo "*  Port Zeppelin:  18080"
echo "*  Zeppelin Notebook should be running at http://localhost:18080"
echo "*"
echo "*  Usage: docker exec -it spark bash"
echo "*"
echo "*****************************************************"
