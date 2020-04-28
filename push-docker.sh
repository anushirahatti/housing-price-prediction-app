#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=housing-price-prediction-app .


dockerpath="anushirahatti/housing-price-prediction-app"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag 04de0c5cc4e0 $dockerpath

# Push Image
docker image push $dockerpath 