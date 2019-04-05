-- psql -U postgres
-- Database: scsp_requirente

-- DROP DATABASE scsp_requirente;

CREATE DATABASE scsp_requirente
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    CONNECTION LIMIT = -1;

ALTER DATABASE scsp_requirente SET client_encoding='UTF8';

CREATE ROLE scsp_requirente LOGIN
ENCRYPTED PASSWORD 'scsp_requirente'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE www_scsp_requirente LOGIN
ENCRYPTED PASSWORD 'www_scsp_requirente'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE scsp_requirente
owner scsp_requirente
LOCATION '/app/postgres/databases/scsp_requirente/requirente';

ALTER ROLE scsp_requirente set default_tablespace=scsp_requirente;

ALTER DATABASE scsp_requirente OWNER to scsp_requirente;







