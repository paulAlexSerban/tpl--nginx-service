#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo "🛑  Cleaning Frontend Nginx node_modules"
rm -rfv ../frontend/nginx/node_modules
echo "🔧  Installing Frontend Nginx"
npm --prefix ../frontend/nginx install
