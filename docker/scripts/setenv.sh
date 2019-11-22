#!/bin/bash

export LONG_APP_NAME=portafib
export SHORT_APP_NAME=pfi
export DB_PORT=5435
export PG_PASSWORD=portafib
export DATA_PATH=/app/docker/postgresql/$LONG_APP_NAME/data
export TABLESPACE_PATH=$DATA_PATH/tablespaces
export PGTABLESPACES=/var/lib/postgresql/data/tablespaces