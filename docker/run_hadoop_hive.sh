#####################################################################
#
#   https://github.com/big-data-europe/docker-hive
#
#   NOTE: Designed for, and tested on, linux
#
#####################################################################

echo "Downloading Github Repo..."
sleep 3
git clone https://github.com/big-data-europe/docker-hive.git
cd docker-hive

echo "Updating yaml version (from 3 to 2)"
sleep 3
sed -i 's/version: "3"/version: "2"/g' docker-compose.yml

echo "Spinning up services (docker-compose up)"
sleep 3
docker-compose up -d
 
#docker-compose exec hive-server bash

echo "###############################################################"
echo ""
echo "Connect to Hadoop/Hive Docker container:"
echo "docker-compose exec hive-server bash"
echo ""
echo "Connect to Hive:"
echo "/opt/hive/bin/beeline -u jdbc:hive2://localhost:10000"
echo ""
echo "###############################################################"

#ZEND
