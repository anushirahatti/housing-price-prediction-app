#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=housing-price-prediction-app .


dockerpath="anushirahatti/housing-price-prediction-app"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag c78a61f25883 $dockerpath

# Push Image
docker image push $dockerpath 