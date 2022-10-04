/* Data for the 'fondo' table  (Records 1 - 1) */

INSERT INTO dec_esito_azione_pai ("cod_esito_azione_pai", "des_esito_azione_pai", "flg_rapporto_lavoro", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'AC', E'Attivita'' conclusa', E'N', E'2021-11-02', NULL, NOW() ),
  (E'ACA', E'Attivita'' conclusa con attivazione rapporto di lavoro in altra azienda', E'S', E'2021-11-02', NULL, NOW() ),
  (E'ACA1', E'Attivita'' conclusa con attivazione apprendistato I livello', E'S', E'2021-11-02', NULL, NOW() ),
  (E'ACA2', E'Attivita'' conclusa con attivazione apprendistato II livello', E'S', E'2021-11-02', NULL, NOW() ),
  (E'ACA3', E'Attivita'' conclusa con attivazione apprendistato III livello', E'S', E'2021-11-02', NULL, NOW() ),
  (E'ACR', E'Attivita'' conclusa con proposta di lavoro rifiutata', E'N', E'2021-11-02', NULL, NOW() ),
  (E'ACS', E'Attivita'' conclusa con attivazione rapporto di lavoro presso stessa azienda', E'S', E'2021-11-02', NULL, NOW() ),
  (E'ACTD12', E'Attivita'' conclusa con attivazione rapporto di lavoro a tempo determinato >= 12 mesi', E'S', E'2021-11-02', NULL, NOW() ),
  (E'ACTD6', E'Attivita'' conclusa con attivazione rapporto di lavoro a tempo determinato 6-12 mesi', E'S', E'2021-11-02', NULL, NOW() ),
  (E'ACTI', E'Attivita'' conclusa con attivazione rapporto di lavoro a tempo indeterminato', E'S', E'2021-11-02', NULL, NOW() ),
  (E'AN', E'Non avviato o Annullato', E'N', E'2021-11-02', NULL, NOW() ),
  (E'CAA', E'Cessazione anticipata per volonta'' dell''azienda/ente', E'N', E'2021-11-02', NULL, NOW() ),
  (E'CAI', E'Cessazione anticipata per volonta'' dell''interessato', E'N', E'2021-11-02', NULL, NOW() ),
  (E'TA', E'Tirocinio Avviato', E'S', E'2016-03-09', NULL, NOW() ),
  (E'CAA50', E'Concluso al 6'||CHR(176)||' mese', E'N', E'2021-11-02', NULL, NOW() ),
  (E'CAI50', E'Concluso al mese: 7', E'N', E'2021-11-02', NULL, NOW() ),
  (E'CAS', E'Concluso al mese: 8', E'S', E'2021-11-02', NULL, NOW() ),
  (E'CAS50', E'Concluso al mese: 9', E'S', E'2021-11-02', NULL, NOW() ),
  (E'CAU', E'Concluso al mese: 10', E'S', E'2021-11-02', NULL, NOW() ),
  (E'CAU50', E'Concluso al mese: 11', E'S', E'2021-11-02', NULL, NOW());