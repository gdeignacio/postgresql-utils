--psql -d my_app

CREATE SCHEMA my_app AUTHORIZATION my_app;

GRANT USAGE ON SCHEMA my_app to www_my_app;

ALTER ROLE www_my_app SET search_path=my_app;



