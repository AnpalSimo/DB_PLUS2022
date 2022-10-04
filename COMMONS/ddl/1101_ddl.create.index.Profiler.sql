
\echo 'executing script 1101_ddl.create.index.Profiler.sql';

\c :dbName :userprof

CREATE UNIQUE INDEX IDX_APPL_INT_APP_INT ON APPL_INT
(COD_APPLICAZIONE, COD_INTERMEDIARIO) ;
