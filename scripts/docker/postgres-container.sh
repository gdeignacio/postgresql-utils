#!/bin/bash

export BD_NAME=appname
export BD_PORT=5432

sudo mkdir -p /app/docker/volumes/postgres/$BD_NAME
sudo docker run --rm --name pg-docker-$BD_NAME -e POSTGRES_PASSWORD=postgres -d -p $BD_PORT:5432 -v /app/docker/volumes/postgres/$BD_NAME:/var/lib/postgresql/data  postgres

