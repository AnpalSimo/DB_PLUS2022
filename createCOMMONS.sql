--\i 'createCOMMONS.sql';


\echo 'executing script createCOMMONS.sql';
\ir 'setVariables.sql';

\o 'createCOMMONS_':PROGETTO'_':dbName'.log'


-- \ir '.\\COMMONS\\ddl\\101_ddl.create.Tablespace.sql';
\ir '.\\COMMONS\\ddl\\201_ddl.create.tables.Users.sql';
\ir '.\\COMMONS\\ddl\\301_ddl.create.public.Functions.sql';

\ir '.\\COMMONS\\ddl\\401_ddl.create.tables.Profiler.sql';
\ir '.\\COMMONS\\ddl\\501_ddl.create.sequence.Profiler.sql';
\ir '.\\COMMONS\\ddl\\601_ddl.create.primarykey.Profiler.sql';

\ir '.\\COMMONS\\ddl\\402_ddl.create.tables.J.sql';
\ir '.\\COMMONS\\ddl\\502_ddl.create.sequence.J.sql';
\ir '.\\COMMONS\\ddl\\602_ddl.create.primarykey.J.sql';

\ir '.\\COMMONS\\ddl\\403_ddl.create.tables.Sill.sql';
\ir '.\\COMMONS\\ddl\\404_ddl.create.tables.Diz.sql';
\ir '.\\COMMONS\\ddl\\503_ddl.create.sequence.Sill.sql';
\ir '.\\COMMONS\\ddl\\603_ddl.create.primarykey.Sill.sql';
\ir '.\\COMMONS\\ddl\\703_ddl.create.functions.Sill.sql';

\ir '.\\COMMONS\\ddl\\802_ddl.create.view.J.sql';
\ir '.\\COMMONS\\ddl\\803_ddl.create.view.Sill.sql';

\ir '.\\COMMONS\\ddl\\901_ddl.create.Grants.sql';


-----------
--- DML ---
-----------

\ir '.\\COMMONS\\dml\\1001_dml.common.Profiler.sql';
\ir '.\\COMMONS\\dml\\1002_dml.common.J.sql';


-----------
--- FK  ---
-----------


\ir '.\\COMMONS\\ddl\\1101_ddl.create.index.Profiler.sql';
\ir '.\\COMMONS\\ddl\\1201_ddl.create.foreignkey.Profiler.sql';

\ir '.\\COMMONS\\ddl\\1103_ddl.create.index.Sill.sql';
\ir '.\\COMMONS\\ddl\\1203_ddl.create.foreignkey.Sill.sql';

\ir '.\\COMMONS\\ddl\\1102_ddl.create.index.J.sql';
\ir '.\\COMMONS\\ddl\\1202_ddl.create.foreignkey.J.sql';

----------------------------------------------
