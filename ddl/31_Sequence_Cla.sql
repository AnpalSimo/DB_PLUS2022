
\echo 'executing script 31_Sequence_Cla.sql';

CREATE SEQUENCE SEQ_INTERMEDIARI
  START WITH 20
  MAXVALUE 9223372036854775807
  MINVALUE 1
  NO CYCLE;
  
CREATE SEQUENCE SEQ_INTERMEDIARI_FILIALI
  START WITH 1
  MAXVALUE 9223372036854775807
  MINVALUE 1
  NO CYCLE
  CACHE 20;

