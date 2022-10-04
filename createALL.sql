--\i 'createALL.sql';

\echo 'executing script createALL.sql';

\ir '.\\createCLADIZ.sql';
\ir '.\\createCOMMONS.sql';

-- La chiamata allo script createCUSTOM.sql va commentata qualora si voglia 
-- effettuare una import da un db esistente.
\ir '.\\createCUSTOM.sql';

