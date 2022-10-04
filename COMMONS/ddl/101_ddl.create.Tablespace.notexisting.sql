
\echo 'executing script 101_ddl.create.Tablespace.notexisting.sql';

-------------------------------------------------------------------------------
-- Creazione del tablespace PLUS.
-------------------------------------------------------------------------------
\set tblspcPlusData :tblspcRoot plus/data
CREATE TABLESPACE plus_data OWNER :dbSystemUser LOCATION :'tblspcPlusData';

-------------------------------------------------------------------------------
-- Creazione del tablespace per gli INDICI di PLUS.
-------------------------------------------------------------------------------
\set tblspcPlusIdx :tblspcRoot plus/idx
CREATE TABLESPACE plus_idx OWNER :dbSystemUser LOCATION :'tblspcPlusIdx';


-------------------------------------------------------------------------------
-- Creazione del tablespace JPLUS.
-------------------------------------------------------------------------------
\set tblspcJplusData :tblspcRoot jplus/data
CREATE TABLESPACE jplus_data OWNER :dbSystemUser LOCATION :'tblspcJplusData';

-------------------------------------------------------------------------------
-- Creazione del tablespace per gli INDICI di JPLUS.
-------------------------------------------------------------------------------
\set tblspcJplusIdx :tblspcRoot jplus/idx
CREATE TABLESPACE jplus_idx OWNER :dbSystemUser LOCATION :'tblspcJplusIdx';