#!/bin/bash

export LONG_APP_NAME=custom
export SHORT_APP_NAME=cst
export DB_PORT=5432
export PG_PASSWORD=custom
export DATA_PATH=/app/docker/postgresql/$LONG_APP_NAME/data
export TABLESPACE_PATH=/app/docker/postgresql/$LONG_APP_NAME/tablespaces
export PG_VOLUME_PATH=/app/postgresql
