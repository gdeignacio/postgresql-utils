#!/bin/bash

export LONG_DB_NAME=emisiones
export SHORT_DB_NAME=emi
export DB_PORT=5432
export PG_PASSWORD=secretos
export DATA_PATH=/app/postgresql/$LONG_DB_NAME/data
export TABLESPACE_PATH=/app/postgresql/$LONG_DB_NAME/tablespaces
export PGTABLESPACES=/app/postgresql/tablespaces