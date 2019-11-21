#!/bin/bash

source ./setenv.sh
sudo docker stop pg-docker-$LONG_APP_NAME
sudo rm -r /app/docker/postgresql/$LONG_APP_NAME

mkdir -p $HOME/.docker-utils
cd $HOME/.dockerutils
sudo rm -r $HOME/.dockerutils/postgresql-utils
git clone https://github.com/gdeignacio/postgresql-utils.git
cd $HOME/.dockerutils/postgresql-utils/scripts
sudo chmod +x *
#source ./setenv.sh
./run-build.sh
./run-container.sh
