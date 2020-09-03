#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
kubectl delete pod microservice-project
dockerpath=babyd/microservices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservice-project\
    --image=$dockerpath\
    --port=80 --labels app=microservice-project

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces


# Step 4:
# Forward the container port to a host
# kubectl expose deployment babyd/microservices --type=LoadBalancer --port=8000 --target-port=80 --name=kubernetes
kubectl port-forward microservice-project 8000:80








