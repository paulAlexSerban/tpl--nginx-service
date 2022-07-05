#!bin/bash 

# START Docker Compose Services
function startComposeNginx() {
  bash backend/nginx/package-scripts.bash build
  docker-compose --env-file config.env \
    --file docker/docker-compose.nginx.yml \
    up --detach --build
}

# TEST

function testCurlNginxContainer() {
  docker run --network container:nginx appropriate/curl -s --retry 10 --retry-connrefused http://localhost
}

# STOP Docker Compose Services

function stopComposeNginx() {
  docker compose --env-file config.env \
    --file docker/docker-compose.nginx.yml \
    down --volumes --rmi all
}

function stopComposeAll() {
    docker compose --env-file config.env \
    --file docker/docker-compose.nginx.yml \
    down --volumes --rmi all
    docker container prune -f
}

$1