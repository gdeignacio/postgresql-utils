#!/bin/bash

sudo mkdir -p $DATA_PATH
sudo mkdir -p $TABLESPACE_PATH
sudo docker run --rm --name pg-docker-$LONG_DB_NAME -e POSTGRES_PASSWORD=$PG_PASSWORD -d -p $DB_PORT:5432 -v $DATA_PATH:/var/lib/postgresql/data  postgres

