#!/bin/bash

sudo docker stop pg-docker-emisiones
sudo rm -r /app
sudo rm -r postgresql-utils
git clone https://github.com/gdeignacio/postgresql-utils.git
cd postgresql-utils/docker
sudo chmod +x *
source ./setenv.sh
./run-install.sh
./run-container.sh
