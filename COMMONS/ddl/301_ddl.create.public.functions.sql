
\echo 'executing script 301_ddl.create.public.functions.sql';

\c :dbName :dbSystemUser

\set pf_filename 301_ddl.create.public.functions. :dbexists .sql
\echo :pf_filename
\ir :pf_filename;