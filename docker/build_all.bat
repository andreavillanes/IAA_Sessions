docker network create dev
docker build -t spark containers/spark
docker build -t hive containers/hive
docker build -t phoenix containers/phoenix
docker build -t nifi containers/nifi
docker build -t kafka containers/kafka
