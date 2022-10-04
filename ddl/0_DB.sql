\echo 'executing script 0_DB.sql';
/*
CREATE ROLE system LOGIN
  PASSWORD :'dbSystemPass'
  SUPERUSER INHERIT NOCREATEDB CREATEROLE NOREPLICATION;
*/
  
CREATE DATABASE planetdb03
  WITH OWNER = system
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
	   TEMPLATE template0
       CONNECTION LIMIT = -1;
	   