#!/bin/bash

source ./setenv.sh
sudo docker stop pg-docker-$LONG_APP_NAME
sudo rm -r /app/docker/postgresql/$LONG_APP_NAME


sudo rm -r $HOME/postgresql-utils
git clone https://github.com/gdeignacio/postgresql-utils.git
cd postgresql-utils/docker
sudo chmod +x *
#source ./setenv.sh
./run-build.sh
./run-container.sh
