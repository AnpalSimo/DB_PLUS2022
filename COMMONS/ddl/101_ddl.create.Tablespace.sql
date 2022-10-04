
\echo 'executing script 101_ddl.create.Tablespace.sql';

\c :dbName :dbSystemUser

\set ts_filename 101_ddl.create.Tablespace. :dbexists .sql
\echo :ts_filename
\ir :ts_filename;