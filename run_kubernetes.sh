#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<welith95/ml-predict-price>
dockerpath='welith95/ml-predict-price:latest'

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-prediction\
      --image=$dockerpath\
      --port=80 --labels app=ml-prediction

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-prediction 8000:80

# Step 5: 
# Get logs
kubectl logs `kubectl get pods -o=name`
