## Listener start script.
## Container will attempt to insert data to cassandra cluster automatically


# Run listener container or create it from image. Pull image if not exists.
sudo docker run -it --rm --name listener neadex/listener:gafa python3 /home/log.py