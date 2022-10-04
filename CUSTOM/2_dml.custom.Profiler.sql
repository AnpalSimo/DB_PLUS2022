\c :dbName :userprof

\set profiler_files_path '.\\' :PROGETTO '\\dml\\PROFILER\\'
\echo :profiler_files_path


\ir :profiler_files_path'APPLICAZIONE.sql';
-- \ir :profiler_files_path'FUNZIONE.sql';
\ir :profiler_files_path'RUOLO_STRUMENTO.sql';  
\ir :profiler_files_path'FUNZIONE_RUOLO_STRUMENTO.sql';
\ir :profiler_files_path'TAB_PROFILO.sql';
\ir :profiler_files_path'PROFILO_APPLICAZIONE.sql';
\ir :profiler_files_path'PROFILO_APP_RUOLO_STRUMENTO.sql';
\ir :profiler_files_path'REGOLA.sql';
\ir :profiler_files_path'REGOLA_APPLICAZIONE.sql';
\ir :profiler_files_path'REGOLA_APPLICAZIONE_SERVIZIO.sql';
\ir :profiler_files_path'REGOLA_PROFILO_FUNZIONE.sql';
/*
\ir '.\\FXSCUOLE\\PROFILER\\APPL_INT.sql';
\ir '.\\FXSCUOLE\\PROFILER\\RUOLO_STRUMENTO.sql';  
\ir '.\\FXSCUOLE\\PROFILER\\FUNZIONE_RUOLO_STRUMENTO.sql';
\ir '.\\FXSCUOLE\\PROFILER\\TAB_PROFILO.sql';
\ir '.\\FXSCUOLE\\PROFILER\\PROFILO_APPLICAZIONE.sql';
\ir '.\\FXSCUOLE\\PROFILER\\PROFILO_APP_RUOLO_STRUMENTO.sql';
\ir '.\\FXSCUOLE\\PROFILER\\REGOLA.sql';
\ir '.\\FXSCUOLE\\PROFILER\\REGOLA_APPLICAZIONE.sql';
\ir '.\\FXSCUOLE\\PROFILER\\REGOLA_APPLICAZIONE_SERVIZIO.sql';
\ir '.\\FXSCUOLE\\PROFILER\\REGOLA_PROFILO_FUNZIONE.sql';
*/