\c :dbName :userj

\set j_files_path '.\\' :PROGETTO '\\dml\\J\\'
\echo :j_files_path


\ir :j_files_path'SPC_APPLICAZIONE.sql';
\ir :j_files_path'SPC_APPLICAZIONE_PROFILO.sql';
\ir :j_files_path'SPC_REGOLA.sql';
\ir :j_files_path'SPC_APPLICAZIONE_SERVIZIO.sql';
\ir :j_files_path'SPC_STRUMENTO_RUOLO.sql';
\ir :j_files_path'SPC_STRUMENTO_RUOLO_FUNZIONE.sql';
\ir :j_files_path'SPC_AUTORIZZAZIONE_DATI.sql';
\ir :j_files_path'SPC_AUTORIZZAZIONE_FUNZIONALE.sql';


/*
delete from SPC_AUTORIZZAZIONE_FUNZIONALE;
delete from SPC_AUTORIZZAZIONE_DATI;
delete from SPC_STRUMENTO_RUOLO_FUNZIONE;
delete from SPC_STRUMENTO_RUOLO;
delete from SPC_APPLICAZIONE_SERVIZIO;
delete from SPC_APPLICAZIONE_PROFILO;
delete from SPC_REGOLA;
delete from SPC_APPLICAZIONE;


*/
