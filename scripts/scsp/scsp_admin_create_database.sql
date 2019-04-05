-- psql -U postgres
-- Database: scsp_admin

-- DROP DATABASE scsp_admin;

CREATE DATABASE scsp_admin
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    CONNECTION LIMIT = -1;

ALTER DATABASE scsp_admin SET client_encoding='UTF8';

CREATE ROLE scsp_admin LOGIN
ENCRYPTED PASSWORD 'scsp_admin'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE www_scsp_admin LOGIN
ENCRYPTED PASSWORD 'www_scsp_admin'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE scsp_admin
owner scsp_admin
LOCATION '/app/postgres/databases/scsp_admin/admin';

ALTER ROLE scsp_admin set default_tablespace=scsp_admin;

ALTER DATABASE scsp_admin OWNER to scsp_admin;







