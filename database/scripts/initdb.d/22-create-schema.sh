#!/bin/bash

source ./00-setenv.sh

cd $HOME
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$LONG_APP_NAME" <<-EOSQL
    
    CREATE SCHEMA $APP_DATABASE_NAME AUTHORIZATION $APP_USER_NAME;

    GRANT USAGE ON SCHEMA $APP_DATABASE_NAME to $APP_WWW_USER_NAME;
    
    ALTER ROLE $APP_WWW_USER_NAME SET search_path=$APP_DATABASE_NAME;

EOSQL