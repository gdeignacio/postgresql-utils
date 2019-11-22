#!/bin/bash

# WARNING
# All your data will be LOST
# Run this script only for development

source ./setenv.sh
sudo rm -r /app/docker/postgresql/$LONG_APP_NAME
mkdir -p $HOME/.docker-utils
cd $HOME/.dockerutils
sudo rm -r $HOME/.dockerutils/postgresql-utils
git clone https://github.com/gdeignacio/postgresql-utils.git
cd $HOME/.dockerutils/postgresql-utils/docker/src
sudo docker build -t "postgres:$LONG_APP_NAME" .
cd $HOME/.dockerutils/postgresql-utils/docker/scripts
sudo chmod +x *
#./run-build.sh
sudo mkdir -p $DATA_PATH
./run-container.sh