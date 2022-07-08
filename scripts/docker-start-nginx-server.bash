#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo "🏗️  BUILD Nginx content"
npm ---prefix .. run build:nginx

echo "🟢  START 🐳  Docker Nginx server conatiner "
docker-compose --env-file ../config.env \
  --file ../docker/docker-compose.nginx.yml \
  up --detach --build
