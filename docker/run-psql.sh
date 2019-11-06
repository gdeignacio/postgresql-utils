#!/bin/bash

sudo docker run -it --rm \
    --name psql-$LONG_DB_NAME \
    --link pg-docker-$LONG_DB_NAME:postgres:$LONG_DB_NAME \
    postgres:$LONG_DB_NAME psql -h postgres -U postgres