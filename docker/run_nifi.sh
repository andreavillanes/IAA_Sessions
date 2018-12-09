docker stop nifi
docker rm -f nifi

docker run -it -d -p 1985:1985 --hostname nifi --net dev --name nifi nifi

# Start NiFi 
docker exec nifi sh -c "/start_nifi.sh" & 
echo "The NiFi service is launching." 
echo "NOTE: This may take a couple minutes to spin up"


echo "*****************************************************"
echo "*"
echo "*  NiFi Container has been started"
echo "*"
echo "*  Port (NiFi): 1985"
echo "*"
echo "*  Usage: docker exec -it nifi bash"
echo "*"
echo "*****************************************************"
echo ""
