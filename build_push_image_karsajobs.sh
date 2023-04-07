#!/bin/bash

# Build docker image based on Dockerfile in current 
# directory and name it karsajobs with tag latest
docker build . -t anandailyasa/karsajobs:latest

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u anandailyasa --password-stdin

# Upload / push local docker image to my Docker Hub repository
docker push anandailyasa/karsajobs:latest