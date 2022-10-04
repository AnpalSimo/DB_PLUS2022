

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('AC', 'Attivita'' conclusa', 'N', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACA', 'Attivita'' conclusa con attivazione rapporto di lavoro in altra azienda', 'S', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACA1', 'Attività conclusa con attivazione apprendistato I livello', 'S', TO_DATE('07-03-2016','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACA2', 'Attività conclusa con attivazione apprendistato II livello', 'S', TO_DATE('07-03-2016','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACA3', 'Attività conclusa con attivazione apprendistato III livello', 'S', TO_DATE('07-03-2016','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACR', 'Attivita'' conclusa con proposta di lavoro rifiutata', 'N', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACS', 'Attivita'' conclusa con attivazione rapporto di lavoro presso stessa azienda', 'S', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACTD12', 'Attività conclusa con attivazione rapporto di lavoro a tempo determinato >= 12 mesi', 'S', TO_DATE('07-03-2016','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACTD6', 'Attività conclusa con attivazione rapporto di lavoro a tempo determinato 6-12 mesi', 'S', TO_DATE('07-03-2016','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('ACTI', 'Attività conclusa con attivazione rapporto di lavoro a tempo indeterminato', 'S', TO_DATE('07-03-2016','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('AN', 'Non avviato o Annullato', 'N', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('CAA', 'Cessazione anticipata per volonta'' dell''azienda/ente', 'N', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('CAI', 'Cessazione anticipata per volonta'' dell''interessato', 'N', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('CAS', 'Cessazione anticipata per attivazione rapporto di lavoro presso stessa azienda', 'S', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('CAU', 'Cessazione anticipata per attivazione rapporto di lavoro in altra azienda', 'S', TO_DATE('13-10-2010','DD-MM-YYYY'), NULL, NOW());

INSERT INTO dec_esito_azione_pai
  (cod_esito_azione_pai, des_esito_azione_pai, flg_rapporto_lavoro, dat_inizio, dat_fine,dtt_tmst)
VALUES ('TA', 'Tirocinio Avviato', 'S', TO_DATE('09-03-2016','DD-MM-YYYY'), NULL, NOW());


INSERT INTO plus_dizionari.dec_esito_azione_pai ("cod_esito_azione_pai", "des_esito_azione_pai", "flg_rapporto_lavoro", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'CAA50', E'Cessazione anticipata per volonta'' dell''azienda/ente indennita'' 50%', E'N', E'2016-05-05', NULL, NOW()),
  (E'CAI50', E'Cessazione anticipata per volonta'' dell''interessato con indennita'' 50%', E'N', E'2016-05-05', NULL, NOW()),
  (E'CAS50', E'Cessazione anticipata per attivazione rapporto di lavoro presso stessa azienda indennita'' 50%', E'S', E'2016-05-05', NULL, NOW()),
  (E'CAU50', E'Cessazione anticipata per attivazione rapporto di lavoro in altra azienda indennita'' 50%', E'S', E'2016-05-05', NULL, NOW());  
