#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
#dockerpath=<welith95/ml-predict-price>
export dockerpath="welith95/ml-predict-price"
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username welith95
docker tag ml-predict-price $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
