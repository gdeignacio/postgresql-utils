--psql -d emisor

CREATE SCHEMA emisor AUTHORIZATION emisor;

GRANT USAGE ON SCHEMA emisor to www_emisor;

ALTER ROLE www_emisor SET search_path=emisor;



