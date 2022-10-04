--\i 'C:\\Piero\\Postgres Scripts\\setVariables.sql';
\echo 'executing script setVariables.sql';
\set PROGETTO puoi2
--\set dbexists existing
\set dbexists existing
\set dbName planetdb02
\set dbSystemUser system
\set dbSystemPass itlpwdplanetdb01

------------------------------------------------------
-- path della root per i tablespaces
------------------------------------------------------
 --test: 
-- \set tblspcRoot '/var/lib/pgsql/9.4/data/pg_tblspc/'

-- palestra
 --\set tblspcRoot '/var/lib/pgsql/9.5/data/pg_tblspc/'

-- sviluppo (localhost):
-- \set tblspcRoot 'C:/tbls_postgres/test_local/'

-- produzione planetdb02
 \set tblspcRoot '/var/lib/pgdata/tablespaces/planetdb02/'
------------------------------------------------------

\set usersill :PROGETTO _sill
\set pwdsill '\'':PROGETTO _sill'\''

\set userprof :PROGETTO _profiler
\set pwdprof '\'':PROGETTO _profiler'\''

\set userapp :PROGETTO _operatore

\set userappj j :PROGETTO _operatore
\set pwdappj '\''j :PROGETTO _operatore'\''

\set userj j :PROGETTO
\set pwdj '\''j :PROGETTO'\''

\set userdiz :PROGETTO _dizionari
\set pwddiz '\'':PROGETTO _dizionari'\''

\set usermon monitoraggio
\set pwdmon 'monitoraggio'