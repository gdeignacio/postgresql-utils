#!/bin/bash

sudo mkdir -p $DATA_PATH
sudo mkdir -p $TABLESPACE_PATH
sudo docker run --rm \
    --name pg-docker-$LONG_DB_NAME \
    -e POSTGRES_PASSWORD=$PG_PASSWORD \
    -e LONG_DB_NAME=$LONG_DB_NAME \
    -d -p $DB_PORT:5432 \
    -v $DATA_PATH:/var/lib/postgresql/data \
    -v $TABLESPACE_PATH:$PG_TABLESPACES \
    postgres:$LONG_DB_NAME

