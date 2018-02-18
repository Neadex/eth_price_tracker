# Run cqlsh and remove container after exit
sudo docker run -it --rm cassandra cqlsh "$(docker inspect --format='{{ .NetworkSettings.IPAddress }}' cass0_gafa)"
