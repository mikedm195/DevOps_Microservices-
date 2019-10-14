#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

dockerpath=318180760014.dkr.ecr.us-west-2.amazonaws.com/udacity-ml-predictions

kubectl run ml-prediction --image=$dockerpath:latest --port=8080

kubectl get pods

kubectl expose deployment ml-prediction --type=NodePort

kubectl get svc

