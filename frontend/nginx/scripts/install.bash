#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "🛑  Cleaning Frontend Nginx node_modules"
rm -rfv ../node_modules
echo "🔧  Installing Frontend Nginx"
npm --prefix .. install
