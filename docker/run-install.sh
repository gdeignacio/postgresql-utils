#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install docker.io
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
#sudo docker pull postgres
sudo docker build -f Dockerfile -t postgres-$LONG_DB_NAME