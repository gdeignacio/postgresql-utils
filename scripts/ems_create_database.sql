-- psql -U postgres
-- Database: my_app

-- DROP DATABASE my_app;

CREATE DATABASE my_app
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    CONNECTION LIMIT = -1;

ALTER DATABASE my_app SET client_encoding='UTF8';

CREATE ROLE my_app LOGIN
ENCRYPTED PASSWORD 'my_app'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE www_my_app LOGIN
ENCRYPTED PASSWORD 'www_my_app'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE my_app
owner my_app
LOCATION '/app/postgres/data/my_app/mpp';
-- Note: review this setting avoids warning
-- WARNING: tablespace location should not be inside the data directory

ALTER ROLE my_app set default_tablespace=my_app;







