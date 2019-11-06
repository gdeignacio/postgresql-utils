#!/bin/bash

export LONG_DB_NAME=appname
export SHORT_DB_NAME=apn
export DB_PORT=5432
export PG_PASSWORD=postgres
export DATA_PATH=/app/docker/volumes/postgresql/$LONG_DB_NAME/data
export TABLESPACE_PATH=/app/docker/volumes/postgresql/$LONG_DB_NAME/tablespaces/$SHORT_DB_NAME
export PGTABLESPACES=/var/lib/postgresql/tablespaces