#####################################################################
#
#   https://github.com/big-data-europe/docker-hive
#
#   NOTE: Designed for, and tested on, linux
#
#####################################################################

git clone https://github.com/big-data-europe/docker-hive.git

cd docker-hive

docker-compose up -d

docker-compose exec hive-server bash

echo "###############################################################"
echo ""
echo "Connect to Hive:"
echo "/opt/hive/bin/beeline -u jdbc:hive2://localhost:10000"
echo ""
echo "###############################################################"

#ZEND
