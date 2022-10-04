
\echo 'executing script 404_ddl.create.tables.Diz.sql';

\c :dbName :userdiz

CREATE TABLE dec_esito_azione_pai (
  cod_esito_azione_pai VARCHAR(10) NOT NULL,
  des_esito_azione_pai VARCHAR(200),
  flg_rapporto_lavoro CHAR(1) DEFAULT 'N'::bpchar,
  dat_inizio DATE,
  dat_fine DATE,
  dtt_tmst TIMESTAMP(6) WITHOUT TIME ZONE,
  CONSTRAINT pk_dec_esito_azione_pai PRIMARY KEY(cod_esito_azione_pai)
) ;



