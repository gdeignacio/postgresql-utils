#!/bin/bash

sudo mkdir -p $DATA_PATH
sudo mkdir -p $TABLESPACE_PATH
sudo chown -R docker:docker $TABLESPACE_PATH
sudo docker run --rm \
    --name pg-docker-$LONG_APP_NAME \
    -e POSTGRES_PASSWORD=$PG_PASSWORD \
    -e LONG_APP_NAME=$LONG_APP_NAME \
    -d -p $DB_PORT:5432 \
    -v $DATA_PATH:/var/lib/postgresql/data \
    -v $TABLESPACE_PATH:$PGTABLESPACES \
    postgres:$LONG_APP_NAME

