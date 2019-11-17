#!/bin/bash

export LONG_APP_NAME=custom
export SHORT_APP_NAME=cst
export DB_PORT=5432
export PG_PASSWORD=custom
export DATA_PATH=/app/docker/postgresql/$LONG_APP_NAME/data
export TABLESPACE_PATH=/app/docker/postgresql/$LONG_APP_NAME/tablespaces
export PGTABLESPACES=/app/postgresql/tablespaces


sudo docker stop pg-docker-$LONG_APP_NAME
sudo rm -r /app/docker/postgresql/$LONG_APP_NAME
sudo rm -r postgresql-utils
git clone https://github.com/gdeignacio/postgresql-utils.git
cd postgresql-utils/docker
sudo chmod +x *
#source ./setenv.sh
./run-install.sh
./run-container.sh
