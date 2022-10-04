
\echo 'executing script 2_Users.sql';
\c :dbName system;
\echo 'Users.sql: creo utente plus_classificazione';
/*
CREATE ROLE plus_classificazione LOGIN
  PASSWORD 'plus_classificazione'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;




----------

\echo 'Users.sql: creo utente plus_dizionari';
CREATE ROLE plus_dizionari LOGIN
  PASSWORD 'plus_dizionari'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

*/

  --------------------------

\echo 'Users.sql: creo gli schema';
CREATE SCHEMA plus_classificazione AUTHORIZATION plus_classificazione;

ALTER SCHEMA plus_classificazione
  OWNER TO plus_classificazione;
  
GRANT USAGE,CREATE ON SCHEMA plus_classificazione TO plus_dizionari;

CREATE SCHEMA plus_dizionari AUTHORIZATION plus_dizionari;

ALTER SCHEMA plus_dizionari
  OWNER TO plus_dizionari;
  
GRANT USAGE,CREATE ON SCHEMA plus_dizionari TO plus_classificazione;

----------


\echo 'Users.sql: setto il search_path';

ALTER ROLE plus_dizionari
  SET search_path = plus_dizionari,plus_classificazione;
  
 
ALTER ROLE plus_classificazione
  SET search_path = plus_classificazione,plus_dizionari;
  