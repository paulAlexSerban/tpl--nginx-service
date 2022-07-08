#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo " 🛑  STOP 🐳  Nginx server"
docker compose --env-file ../config.env \
  --file ../docker/docker-compose.nginx.yml \
  down --volumes --rmi all
