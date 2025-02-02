#!/bin/bash

# This will install docker following [https://docs.docker.com/install/linux/docker-ce/ubuntu/]
apt-get remove docker docker-engine docker.io
apt-get update

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
apt-get install -y docker-ce 
groupadd docker
usermod -aG docker ${USER}
docker run hello-world
