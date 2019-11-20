-- psql -U postgres
-- Database: emisor

-- DROP DATABASE emisor;

CREATE DATABASE emisor
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    CONNECTION LIMIT = -1;

ALTER DATABASE emisor SET client_encoding='UTF8';

CREATE ROLE emisor LOGIN
ENCRYPTED PASSWORD 'emisor'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE www_emisor LOGIN
ENCRYPTED PASSWORD 'www_emisor'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE emisor
owner emisor
LOCATION '/app/postgres/databases/emisor/scsp';
-- Note: review this setting avoids warning
-- WARNING: tablespace location should not be inside the data directory

ALTER ROLE emisor set default_tablespace=emisor;

ALTER DATABASE emisor OWNER to emisor;







