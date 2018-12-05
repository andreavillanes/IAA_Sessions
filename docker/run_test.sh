docker stop test
docker rm -f test

docker run -it -d --hostname test --net dev --name test test

#############################################
#  Test Script
#############################################
echo ""
echo "Creating a test file called test.txt with some dummy data"
sleep 3
docker exec test touch test.txt
docker exec test sh -c "echo 'dummy data line 1' >> test.txt"
docker exec test sh -c "echo 'dummy data line 2' >> test.txt"
echo ""
echo "Printing directory structure (ls -al) within Docker container"
sleep 3
docker exec test ls -al
echo ""
echo "Showing contents of test.txt file"
sleep 3
docker exec test cat test.txt
echo ""
echo ""
echo "Test Complete!"
echo ""


echo ""
echo "*"
echo "*  Usage: docker exec -it test bash"
echo "*"


