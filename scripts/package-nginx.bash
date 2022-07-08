#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo "📦  Package Frontend Nginx"
mkdir -p ../package/nginx
cp -rfv ../frontend/nginx/dist/* ../package/nginx