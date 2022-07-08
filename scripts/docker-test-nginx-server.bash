#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder
echo "🧪  TEST Nginx server"
bash ../docker/test/check-docker-container.bash nginx
