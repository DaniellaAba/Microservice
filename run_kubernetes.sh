#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# kubectl delete pod microservices

# dockerpath=microservices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microservices --image=babyd/microservices:microservice-project --port=80

# Step 3:
# List kubernetes pods
kubectl get pods 


# Step 4:
# Forward the container port to a host
# kubectl expose deployment babyd/microservices --type=LoadBalancer --port=8000 --target-port=80 --name=kubernetes

kubectl port-forward microservices 8000:80








