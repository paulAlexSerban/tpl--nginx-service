#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

function build () {
  echo "🏗️ - Building ..."
  mkdir dist
  rm -rfv dist/*
  cp -rfv source/* dist/
 }

$1