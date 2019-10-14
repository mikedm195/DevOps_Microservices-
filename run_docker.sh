#!/usr/bin/env bash

docker build -t devops-microservice .

docker images

docker run -p 8000:80 devops-microservice
