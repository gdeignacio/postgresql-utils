#!/bin/bash

export BD_NAME=appname
sudo docker run -it --rm --name psql-$BD_NAME --link pg-docker-$BD_NAME:postgres postgres psql -h postgres -U postgres