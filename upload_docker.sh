#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
# dockerpath=369c88436d87
dockerpath=babyd/microservices:microservice-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"


docker login docker.io
docker tag microservice-project $dockerpath

# Step 3:
# Push image to a docker repository

docker push $dockerpath
# docker push babyd/microservices:tagname
# docker push https://github.com/DaniellaAba/proj4.git
