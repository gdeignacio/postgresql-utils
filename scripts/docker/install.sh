#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install docker.io
docker --version
sudo systemctl enable docker
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl status docker
sudo docker pull postgres
