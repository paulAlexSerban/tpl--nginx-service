# Nginx Service for Local Static Website Development
## About

## Some Development Commands

- `npm install` - install dependencies
- `bash modulize.sh -e <ENVIRONMENT> -m <MODULE> -p <PHASE>`
  - `bash modulize.sh -e dev -m nginx -p build` - build nginx frontend files
  - `bash modulize.sh -e dev -m nginx -p start` - start nginx server
  - `bash modulize.sh -e dev -m nginx -p watch` - watch for changes in nginx frontend files
  - `bash modulize.sh -e dev -m nginx -p stop` - stop nginx server
  - `bash modulize.sh -e dev -p clean` - clean docker images and containers

## Local Development URLs

- [local instance](http://localhost:80)
