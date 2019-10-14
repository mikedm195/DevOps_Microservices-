#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=318180760014.dkr.ecr.us-west-2.amazonaws.com/udacity-ml-predictions

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
$(aws ecr get-login --no-include-email --region us-west-2)
docker tag devops-microservice:latest 318180760014.dkr.ecr.us-west-2.amazonaws.com/udacity-ml-predictions:latest

# Push image to a docker repository
docker push 318180760014.dkr.ecr.us-west-2.amazonaws.com/udacity-ml-predictions:latest