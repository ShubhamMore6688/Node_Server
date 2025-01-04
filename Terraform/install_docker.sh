#!/bin/bash

# update the server
sudo apt-get update

# install docker 
sudo apt-get install docker.io -y

# start the docker service
sudo systemctl start docker

# add the current user into the docker group
usermod -aG docker $USER

# dockerhub login
docker login -u dockerhub_username -p dockerhub_password

# pull the image from dockerhub
docker pull smore6688/node-server:latest

# run the our application
docker run -d -p 3000:3000 smore6688/node-server:latest
