#!/bin/bash

# WARNING
# All your data will be LOST
# Run this script only for development

#source ./setenv.sh

export LONG_APP_NAME=portafib
export SHORT_APP_NAME=pfi
export DB_PORT=5435
export PG_PASSWORD=portafib
export DATA_PATH=/app/docker/postgresql/$LONG_APP_NAME/data
export TABLESPACE_PATH=$DATA_PATH/tablespaces
export PGTABLESPACES=/var/lib/postgresql/data/tablespaces

sudo rm -r /app/docker/postgresql/$LONG_APP_NAME
mkdir -p $HOME/.docker-utils
cd $HOME/.docker-utils
sudo rm -r $HOME/.docker-utils/postgresql-utils
git clone https://github.com/gdeignacio/postgresql-utils.git
cd $HOME/.docker-utils/postgresql-utils/docker/src
sudo docker build -t "postgres:$LONG_APP_NAME" .
cd $HOME/.docker-utils/postgresql-utils/docker/scripts
sudo chmod +x *
#./run-build.sh
sudo mkdir -p $DATA_PATH

sudo docker run --rm \
    --name pg-docker-$LONG_APP_NAME \
    -e POSTGRES_PASSWORD=$PG_PASSWORD \
    -e LONG_APP_NAME=$LONG_APP_NAME \
    -d -p $DB_PORT:5432 \
    -v $DATA_PATH:/var/lib/postgresql/data \
    postgres:$LONG_APP_NAME