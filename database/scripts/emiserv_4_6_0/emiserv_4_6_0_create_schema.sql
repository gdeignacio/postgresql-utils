--psql -d emiserv_4_6_0

CREATE SCHEMA emiserv_4_6_0 AUTHORIZATION emiserv_4_6_0;

GRANT USAGE ON SCHEMA emiserv_4_6_0 to www_emiserv_4_6_0;

ALTER ROLE www_emiserv_4_6_0 SET search_path=emiserv_4_6_0;



