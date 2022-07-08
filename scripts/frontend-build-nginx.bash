#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo "🛑 Cleaning Frontend Nginx"
rm -rfv ../frontend/nginx/dist
echo "🏗️ Building Frontend Nginx "
npm --prefix ../frontend/nginx run build