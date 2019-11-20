-- psql -U postgres
-- Database: scsp_cliente

-- DROP DATABASE scsp_cliente;

CREATE DATABASE scsp_cliente
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    CONNECTION LIMIT = -1;

ALTER DATABASE scsp_cliente SET client_encoding='UTF8';

CREATE ROLE scsp_cliente LOGIN
ENCRYPTED PASSWORD 'scsp_cliente'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE ROLE www_scsp_cliente LOGIN
ENCRYPTED PASSWORD 'www_scsp_cliente'
NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE;

CREATE TABLESPACE scsp_cliente
owner scsp_cliente
LOCATION '/app/postgres/databases/scsp_cliente/cliente';

ALTER ROLE scsp_cliente set default_tablespace=scsp_cliente;

ALTER DATABASE scsp_cliente OWNER to scsp_cliente;







