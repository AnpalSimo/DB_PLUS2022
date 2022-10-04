
\echo 'executing script 201_ddl.create.tables.Users.sql';


------------------------------------------------------------------------------------------
-- Creazione Owner SILL.
------------------------------------------------------------------------------------------


\echo 'Users.sql: creo utente ' :usersill

CREATE ROLE :usersill LOGIN PASSWORD :pwdsill NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
  
ALTER ROLE :usersill
  SET search_path = :usersill,:userdiz, plus_classificazione,plus_dizionari,:userprof ,:userj, public; 

------------------------------------------------------------------------------------------
-- Creazione Owner PROFILER.
------------------------------------------------------------------------------------------


\echo 'Users.sql: creo utente ' :userprof

CREATE ROLE :userprof LOGIN PASSWORD :pwdprof NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
  
ALTER ROLE :userprof
  SET search_path = :userprof,plus_classificazione, plus_dizionari, public;

------------------------------------------------------------------------------------------
-- Creazione Owner OPERATORE.
------------------------------------------------------------------------------------------


\echo 'Users.sql: creo utente ' :userapp

CREATE ROLE :userapp LOGIN PASSWORD 'vio1lin' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
  
ALTER ROLE :userapp
  SET search_path = :userdiz,:usersill,:userprof,plus_classificazione, plus_dizionari,:userj, public;

  
------------------------------------------------------------------------------------------
-- Creazione Owner J.
------------------------------------------------------------------------------------------


\echo 'Users.sql: creo utente ' :userj 

CREATE ROLE :userj LOGIN PASSWORD :pwdj NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
  
ALTER ROLE :userj
  SET search_path = :userj,:usersill,plus_classificazione, plus_dizionari, public;
  
------------------------------------------------------------------------------------------
-- Creazione Owner DIZ.
------------------------------------------------------------------------------------------


\echo 'Users.sql: creo utente ' :userdiz 

CREATE ROLE :userdiz LOGIN PASSWORD :pwddiz NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
  
ALTER ROLE :userdiz
  SET search_path = :userdiz,:usersill,:userprof,:userj,plus_classificazione, plus_dizionari, public;
  

------------------------------------------------------------------------------------------
-- Creazione Owner JOPERATORE.
------------------------------------------------------------------------------------------


\echo 'Users.sql: creo utente ' :userappj

CREATE ROLE :userappj LOGIN
  PASSWORD :pwdappj
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
  
ALTER ROLE :userappj
  SET search_path = :userdiz,:userj, plus_classificazione, plus_dizionari, :usersill, :userprof, public;
  

\echo 'Users.sql: creo gli schema';

CREATE SCHEMA AUTHORIZATION :usersill;
GRANT USAGE ON SCHEMA :usersill TO :userprof;
GRANT USAGE ON SCHEMA :usersill TO :userapp;
GRANT USAGE ON SCHEMA :usersill TO :userj;
GRANT USAGE ON SCHEMA :usersill TO :userappj;
GRANT USAGE ON SCHEMA :usersill TO :usermon;
GRANT USAGE ON SCHEMA :usersill TO :userdiz;
GRANT USAGE ON SCHEMA :usersill TO plus_dizionari;


CREATE SCHEMA AUTHORIZATION :userdiz;
GRANT USAGE ON SCHEMA :userdiz TO :usersill;
GRANT USAGE ON SCHEMA :userdiz TO :userprof;
GRANT USAGE ON SCHEMA :userdiz TO :userapp;
GRANT USAGE ON SCHEMA :userdiz TO :userj;
GRANT USAGE ON SCHEMA :userdiz TO :userappj;
GRANT USAGE ON SCHEMA :userdiz TO :usermon;
GRANT USAGE ON SCHEMA :userdiz TO plus_dizionari;


CREATE SCHEMA AUTHORIZATION :userprof; 
GRANT USAGE ON SCHEMA :userprof TO :userapp;
GRANT USAGE ON SCHEMA :userprof TO :userj;
GRANT USAGE ON SCHEMA :userprof TO :userappj;
GRANT USAGE ON SCHEMA :userprof TO :usersill;
GRANT USAGE ON SCHEMA :userprof TO plus_dizionari;
GRANT USAGE ON SCHEMA :userprof TO :usermon;
GRANT USAGE ON SCHEMA :userprof TO :userdiz;


CREATE SCHEMA AUTHORIZATION :userj; 
GRANT USAGE ON SCHEMA :userj TO :userprof;
GRANT USAGE ON SCHEMA :userj TO :userapp;
GRANT USAGE ON SCHEMA :userj TO :userappj;
GRANT USAGE ON SCHEMA :userj TO :usersill;
GRANT USAGE ON SCHEMA :userj TO :usermon;
GRANT USAGE ON SCHEMA :userj TO :userdiz;
GRANT USAGE ON SCHEMA :userj TO plus_dizionari;



GRANT USAGE ON SCHEMA plus_classificazione TO :userprof;
GRANT USAGE ON SCHEMA plus_classificazione TO :userprof;
GRANT USAGE ON SCHEMA plus_classificazione TO :userapp;
GRANT USAGE ON SCHEMA plus_classificazione TO :userj;
GRANT USAGE ON SCHEMA plus_classificazione TO :userappj;
GRANT USAGE ON SCHEMA plus_classificazione TO :usersill;
GRANT USAGE ON SCHEMA plus_classificazione TO :userdiz;
GRANT USAGE ON SCHEMA plus_classificazione TO :usermon;



GRANT USAGE ON SCHEMA plus_dizionari TO :userprof;
GRANT USAGE ON SCHEMA plus_dizionari TO :userapp;
GRANT USAGE ON SCHEMA plus_dizionari TO :userj;
GRANT USAGE ON SCHEMA plus_dizionari TO :userappj;
GRANT USAGE ON SCHEMA plus_dizionari TO :usersill;
GRANT USAGE ON SCHEMA plus_dizionari TO :usermon;
GRANT USAGE ON SCHEMA plus_dizionari TO :userdiz;

/*
grant create on tablespace plus_data to :userprof;
grant create on tablespace plus_data to :usersill;
grant create on tablespace plus_data to :userapp;
grant create on tablespace plus_data to :userappj;
grant create on tablespace plus_data to :userj;



grant create on tablespace plus_idx to :userprof;
grant create on tablespace plus_idx to :usersill;
grant create on tablespace plus_idx to :userapp;
grant create on tablespace plus_idx to :userappj;
grant create on tablespace plus_idx to :userj;



grant create on tablespace jplus_data to :userprof;
grant create on tablespace jplus_data to :usersill;
grant create on tablespace jplus_data to :userapp;
grant create on tablespace jplus_data to :userappj;
grant create on tablespace jplus_data to :userj;



grant create on tablespace jplus_idx to :userprof;
grant create on tablespace jplus_idx to :usersill;
grant create on tablespace jplus_idx to :userapp;
grant create on tablespace jplus_idx to :userappj;
grant create on tablespace jplus_idx to :userj;
*/