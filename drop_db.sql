-- \i 'drop_plusdb.sql';
-- DROP DB
\i 'setVariables.sql';
DROP DATABASE :dbName ;

-- DROP TABLESPACES
DROP TABLESPACE cladiz_data;
DROP TABLESPACE cladiz_idx;
DROP TABLESPACE plus_data;
DROP TABLESPACE plus_idx;
DROP TABLESPACE jplus_data;
DROP TABLESPACE jplus_idx;



-- DROP USERS
DROP ROLE plus_classificazione;
DROP ROLE plus_dizionari;
DROP ROLE fxscuole_operatore;
DROP ROLE jfxscuole_operatore;
DROP ROLE fxscuole_sill;
DROP ROLE fxscuole_profiler;
DROP ROLE jfxscuole;


DROP ROLE osvec_operatore;
DROP ROLE josvec_operatore;
DROP ROLE osvec_sill;
DROP ROLE osvec_profiler;
DROP ROLE josvec;


--DROP ROLE system;