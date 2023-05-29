#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "🏗️  BUILD Nginx content"
bash frontend-build-nginx.bash

echo "🟢  START 🐳  Docker Nginx server conatiner "
docker-compose --env-file ../config.env \
  --file ../docker/docker-compose.nginx.yml \
  up --detach --build
