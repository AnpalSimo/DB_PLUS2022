--\i 'createCLA_DIZ.sql';

\echo 'executing script createCLADIZ.sql';

\ir 'setVariables.sql';

\o 'create_CLADIZ.log'
\ir 'CLA_DIZ\\ddl\\0_DB.sql';



-- \ir 'CLA_DIZ\\ddl\\1_Tablespace.sql';
\ir 'CLA_DIZ\\ddl\\2_Users.sql';

\ir 'CLA_DIZ\\ddl\\30_Tabelle_Cla.sql';
\ir 'CLA_DIZ\\ddl\\31_Sequence_Cla.sql';
\ir 'CLA_DIZ\\ddl\\32_Grants_Cla.sql';
\ir 'CLA_DIZ\\ddl\\33_Pk_Cla.sql';

\ir 'CLA_DIZ\\dml\\1_Classificazione_dml.sql';

\ir 'CLA_DIZ\\ddl\\40_Tabelle_Diz.sql';
\ir 'CLA_DIZ\\ddl\\41_Sequence_Diz.sql';
\ir 'CLA_DIZ\\ddl\\42_Grants_Diz.sql';
\ir 'CLA_DIZ\\ddl\\43_Pk_Diz.sql';


\ir 'CLA_DIZ\\dml\\2_Dizionari_dml.sql';

\ir 'CLA_DIZ\\ddl\\50_Fk_Cla.sql';
\ir 'CLA_DIZ\\ddl\\51_Idx_Cla.sql';

\ir 'CLA_DIZ\\ddl\\60_Fk_Diz.sql';
\ir 'CLA_DIZ\\ddl\\61_Idx_Diz.sql';

