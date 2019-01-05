docker stop phoenix
docker rm -f phoenix

docker run -it -d -p 8765:8765 --hostname phoenix --net dev --name phoenix phoenix

# Copy Assets
docker cp containers/phoenix/assets/phoenix_1_create_tables.sql phoenix:/. 
docker cp containers/phoenix/assets/phoenix_2_load_csvs.sh phoenix:/.
docker cp containers/phoenix/assets/phoenix_3_queries.sql phoenix:/.
docker cp containers/phoenix/assets/connect_to_phoenix.sh phoenix:/.
docker cp containers/phoenix/assets phoenix:/
docker cp data phoenix:/

echo "*****************************************************"
echo "*"
echo "*  Phoenix Container has been started..."
echo "*"
echo "*  Port (Phoenix):  8765"
echo "*"
echo "*  Usage: docker exec -it phoenix bash"
echo "*"
echo "*****************************************************"

