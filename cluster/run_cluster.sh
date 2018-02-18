
# Run spark cluster + cassandra seed node
docker-compose up -d

# Wait for cassandra seed to be up
sleep 300

# Start cassandra secondary node, or create it if not exists
sudo docker start cass1_gafa || sudo docker run --name cass1_gafa -d -e CASSANDRA_SEEDS="$(docker inspect --format='{{ .NetworkSettings.IPAddress }}' cass0_gafa)" cassandra:latest


## Count number of "UN" in cassandra cluster via nodetools
## Loop until 2 nodes are started

while true ; do
	started="$(sudo ./nodetools.sh status | grep -o UN | wc -l)"
	if [ "$started" = "2" ]; then
		echo "Cluster correctly started"
		break
	fi
done
