
\echo 'executing script 51_Idx_Cla.sql';

CREATE UNIQUE INDEX IDX_ATECOLIV4_DESC ON TAB_ATECOLIV4
(DES_ATECOLIV4) ;



CREATE INDEX IDX_COD_COMUNE ON TAB_COMUNE_INTERMEDIARI
(COD_COMUNE) ;



CREATE INDEX IDX_COD_INTERMEDIARIO ON TAB_COMUNE_INTERMEDIARI
(COD_INTERMEDIARIO) ;



CREATE INDEX IDX_COD_REGIONE ON TAB_PROVINCE
(COD_REGIONE) ;



CREATE INDEX IDX_PROVINCE_COD_ML_REG ON TAB_PROVINCE
(COD_ML_REG) ;



CREATE UNIQUE INDEX IDX_PROVINCIA_COMUNE ON TAB_COMUNI
(COD_PROVINCIA, COD_COMUNE) ;



CREATE INDEX IDX_REGIONE_PROVINCIA ON TAB_PROVINCE
(COD_REGIONE, COD_PROVINCIA) ;



CREATE UNIQUE INDEX IDX_REGIONI_COD_ML ON TAB_REGIONI
(COD_ML) ;



CREATE INDEX IDX_TAB_ALBO_SEDI ON TAB_ALBO_SEDI
(COD_ALBO_INTERMEDIARI) ;

--20160225
create unique index idx_intermediari on tab_intermediari (COD_TIPO_INTERMEDIARIO,DES_INTERMEDIARIO,COD_FISCALE);