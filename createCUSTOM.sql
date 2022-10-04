--\i 'C:\\Piero\\Postgres Scripts\\createCUSTOM.sql';

\echo 'executing script createCUSTOM.sql';
\ir 'setVariables.sql';
\o 'createCUSTOM_':PROGETTO'_':dbName'.log'

\ir '.\\CUSTOM\\1_dml.custom.ClaDiz.sql';
\ir '.\\CUSTOM\\2_dml.custom.Profiler.sql';
\ir '.\\CUSTOM\\3_dml.custom.J.sql';
\ir '.\\CUSTOM\\4_dml.custom.Diz.sql';
\ir '.\\CUSTOM\\5_dml.custom.Sill.sql';

