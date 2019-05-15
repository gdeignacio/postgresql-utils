-- psql -U postgres
-- Database: emiserv_4_6_0

-- DROP DATABASE emiserv_4_6_0;

CREATE DATABASE emiserv_4_6_0
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    CONNECTION LIMIT = -1;

ALTER DATABASE emiserv_4_6_0 SET client_encoding='UTF8';

CREATE ROLE emiserv_4_6_0 LOGIN
ENCRYPTED PASSWORD 'emiserv_4_6_0'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE www_emiserv_4_6_0 LOGIN
ENCRYPTED PASSWORD 'www_emiserv_4_6_0'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE emiserv_4_6_0
owner emiserv_4_6_0
LOCATION '/app/postgres/databases/emiserv_4_6_0/ems';

ALTER ROLE emiserv_4_6_0 set default_tablespace=emiserv_4_6_0;

ALTER DATABASE emiserv_4_6_0 OWNER to emiserv_4_6_0;







