#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    
    CREATE DATABASE $LONG_DB_NAME
        WITH OWNER = postgres
        ENCODING = 'UTF8'
        TABLESPACE = pg_default
        LC_COLLATE = 'es_ES.UTF-8'
        LC_CTYPE = 'es_ES.UTF-8'
        CONNECTION LIMIT = -1;

    ALTER DATABASE $LONG_DB_NAME SET client_encoding='UTF8';

    CREATE ROLE $LONG_DB_NAME LOGIN
    ENCRYPTED PASSWORD '$LONG_DB_NAME'
    NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

    CREATE ROLE www_$LONG_DB_NAME LOGIN
    ENCRYPTED PASSWORD 'www_$LONG_DB_NAME'
    NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

    CREATE TABLESPACE $LONG_DB_NAME
    owner $LONG_DB_NAME
    LOCATION '$PGTABLESPACES';
   
    ALTER ROLE $LONG_DB_NAME set default_tablespace=$LONG_DB_NAME;

    ALTER DATABASE $LONG_DB_NAME OWNER to $LONG_DB_NAME;

EOSQL


psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$LONG_DB_NAME" <<-EOSQL
    
    CREATE SCHEMA $LONG_DB_NAME AUTHORIZATION $LONG_DB_NAME;

    GRANT USAGE ON SCHEMA $LONG_DB_NAME to www_$LONG_DB_NAME;
    
    ALTER ROLE www_$LONG_DB_NAME SET search_path=$LONG_DB_NAME;

EOSQL