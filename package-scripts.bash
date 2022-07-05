#!bin/bash

# START Docker Compose Services
function startComposeNginx() {
  echo "🐳  🟢  START Nginx conatiner "
  bash backend/nginx/package-scripts.bash build
  docker-compose --env-file config.env \
    --file docker/docker-compose.nginx.yml \
    up --detach --build
}

# TEST

function testCurlNginxContainer() {
  echo "🧪  TEST Nginx container"
  docker run --network container:nginx appropriate/curl -s --retry 10 --retry-connrefused http://localhost
}

# STOP Docker Compose Services

function stopComposeNginx() {
  echo " 🛑  🐳  STOP Nginx docker containers"
  docker compose --env-file config.env \
    --file docker/docker-compose.nginx.yml \
    down --volumes --rmi all
}

function stopComposeAll() {
  echo " 🛑  🐳  STOP all docker containers"
  docker compose --env-file config.env \
    --file docker/docker-compose.nginx.yml \
    down --volumes --rmi all
  docker container prune -f
}

$1
