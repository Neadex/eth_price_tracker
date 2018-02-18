

1. Téléchargement de l'archive contenant cass0:gafa et chargement de l'image

	wget [url]
	sudo docker load -i cass0_gafa.tar

	Si la commande wgetne fonctionne pas, télécharger directement sur :
		https://drive.google.com/open?id=1KXDepX4jWYOrRliqNVG5Rzs9uxAxaZAs

2. Pull de l'image spark depuis Dockerhub

	sudo docker pull neadex/spark_docker_compose

3. Lancement de l'ensemble du cluster

	sudo ./run_cluster.sh

4. Lancement de Jupyter notebook (depuis Spark master)

	sudo ./jupyter_notebook

5. Chargement de données depuis le disque local vers Spark

	sudo ./load_data path/to/file

	ex: sudo ./load_data ../cass_db/raw_data/AAPL_Daily.csv

	Les données sont chargée dans le sous-dossier "data" de spark.

6. Arrêt du cluster

	sudo ./stop_cluster.sh




Le script run_all.sh permet de lancer le cluster + le script d'écoute
