\c :dbName :dbSystemUser;
\echo 'executing script 1_Tablespace.sql';
\set tblspcClaDizData :tblspcRoot cladiz/data
CREATE TABLESPACE cladiz_data OWNER :dbSystemUser LOCATION :'tblspcClaDizData' ;

\set tblspcClaDizIdx :tblspcRoot cladiz/idx
CREATE TABLESPACE cladiz_idx OWNER :dbSystemUser LOCATION :'tblspcClaDizIdx' ;