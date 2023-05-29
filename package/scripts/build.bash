#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "📦  Package Frontend Nginx"
mkdir -p ../nginx
cp -rfv ../../frontend/nginx/dist/* ../nginx