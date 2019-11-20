-- psql -U postgres
-- Database: scsp_emisor

-- DROP DATABASE scsp_emisor;

CREATE DATABASE scsp_emisor
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    CONNECTION LIMIT = -1;

ALTER DATABASE scsp_emisor SET client_encoding='UTF8';

CREATE ROLE scsp_emisor LOGIN
ENCRYPTED PASSWORD 'scsp_emisor'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE www_scsp_emisor LOGIN
ENCRYPTED PASSWORD 'www_scsp_emisor'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE scsp_emisor
owner scsp_emisor
LOCATION '/app/postgres/databases/scsp_emisor/emisor';

ALTER ROLE scsp_emisor set default_tablespace=scsp_emisor;

ALTER DATABASE scsp_emisor OWNER to scsp_emisor;







