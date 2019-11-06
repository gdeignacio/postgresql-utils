#!/bin/bash

sudo docker run -it --rm \
    --name psql-$LONG_DB_NAME \
    --link pg-docker-$LONG_DB_NAME:postgres \
    postgres psql -h postgres -U postgres