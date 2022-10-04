
------------------------------------------------------------
-- Caricamento nella tabella TAB_TIPO_INTERMEDIARI
------------------------------------------------------------

INSERT INTO plus_classificazione.tab_tipo_intermediario ("cod_tipo_intermediario", "des_tipo_intermediario", "flg_pubblico", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2.SP', E'Ente Promotore PUOI 2', E'N', E'2022-06-09', NULL, NOW());

------------------------------------------------------------
-- Caricamento nella tabella TAB_INTERMEDIARI
------------------------------------------------------------
/*
INSERT INTO plus_classificazione.tab_intermediari (cod_intermediario, cod_tipo_intermediario, des_intermediario, dat_inizio, dat_fine, dtt_tmst, flg_classificazione_standard, des_indirizzo_recapito, cod_cap_recapito, cod_comune_recapito, cod_fiscale, cod_padre)
VALUES 
  (E'00000003438', E'SP', E'SOGGETTO 1', E'2015-11-15', NULL, NOW(,NOW() ,NOW() ), E'N', E'VIA PO 1', E'92100', E'A089', E'01398441004', NULL,NOW() ,NOW() ),
  (E'00000003439', E'SP', E'SOGGETTO 2', E'2015-11-15', NULL, NOW(,NOW() ,NOW() ), E'N', E'VIALE ROMA 11', E'15020', E'A182', E'06917971217', NULL);
*/

------------------------------------------------------------
-- Caricamento nella tabella DEC_ALLEGATI

/* Data for the 'plus_dizionari.dec_allegati' table  (Records 1 - 22) */

INSERT INTO plus_dizionari.dec_allegati ("cod_applicazione", "cod_allegato", "des_label", "des_formato", "cod_codicestrumento", "cod_funzione", "txt_note", "prg_istanza", "num_dimensione_max", "cod_obbligatorio", "dat_inizio", "dat_fine", "dtt_tmst", "cod_categoria_file")
VALUES 
  (E'PUOI2', E'ACOD_FISC', E'Codice Fiscale Destinatario ', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'BDOC_IDEN', E'Documento identita'' e permesso di soggiorno', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'BONIFICI', E'Flusso Bonifici', E'CSV', NULL, NULL, E'Formati ammessi: CSV.', NULL, '15000', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'CDATI_PAG', E'Modulo dati pagamento (generato sistema informativo)', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'CONV', E'Convenzione', E'PDF,JPEG,JPG', E'ST.PA.CONV.GESALLEGATI', E'FN.PA.CONV.GESALLEGATI', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 1024KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '1024', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'DDETR_REDD', E'Modulo detrazioni reddito (generato sistema informativo)', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'ATT_FIN', E'Attestazione finale del percorso formativo', E'PDF,JPG,JPEG', E'ST.AMM.GESRICHIESTAPAGAMENTO', E'FN.AMM.GESRICHIESTAPAGAMENTO.ALLEGATI', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 1024KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '1024', E'N', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'CUR_DEST', E'Curriculum vitae del destinatario *', E'PDF', E'ST.AMM.GESRICHIESTAPAGAMENTO', E'FN.AMM.GESRICHIESTAPAGAMENTO.ALLEGATI', E'Formati ammessi: PDF. Dimensione massima ammessa: 1024KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '1024', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'ECONV', E'Convenzione', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'EPROG_FORM', E'Progetto formativo', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'ESITO', E'Flusso Esito', E'CSV', NULL, NULL, E'Formati ammessi: CSV.', NULL, '15000', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'FLUSSO', E'Flusso Richieste/Rettifiche', E'CSV', NULL, NULL, E'Formati ammessi: CSV.', NULL, '15000', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'ICOM_OBB', E'Comunicazione obbligatoria di avvio, proroga o cessazione del tirocinio (Unilav)', E'PDF,JPG,JPEG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'ISCR_CPI', E'Dichiarazione di immediata disponibilita''', E'PDF,JPG,JPEG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'REG_PRES_T', E'Registro presenze', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO.TUTOR', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 2048KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '2048', E'N', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'RIEP_ATT', E'Registro integrale delle "attivita'' non formative" (All_4) *', E'PDF,JPG,JPEG', E'ST.AMM.GESRICHIESTAPAGAMENTO', E'FN.AMM.GESRICHIESTAPAGAMENTO.ALLEGATI', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 1024KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '1024', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'SOSPESI', E'Flusso Sospesi', E'CSV', NULL, NULL, E'Formati ammessi: CSV.', NULL, '15000', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'FINAIL', E'Quietanza del pagamento dell''assicurazione INAIL (All_7)', E'PDF,JPG,JPEG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'GRCT', E'Ricevuta del pagamento dell''assicurazione per Responsabilita'' Civile verso Terzi (RCT) (All_8)', E'PDF,JPG,JPEG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'U', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'REG_PRES_P', E'Registro integrale delle "attivita'' formative" (All_5) *', E'PDF,JPG,JPEG', E'ST.AMM.GESRICHIESTAPAGAMENTO', E'FN.AMM.GESRICHIESTAPAGAMENTO.ALLEGATI', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 2048KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '2048', E'S', E'2022-06-09', NULL, NOW(), NULL),
  (E'PUOI2', E'HREG_PRES', E'Registro presenze relativo alla mensilita'' svolta(All_5) *', E'PDF,JPEG,JPG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 2048KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '2048', E'S', E'2022-06-09', NULL, NOW(), E'GI'),
  (E'PUOI2', E'ZATT_ENLOC', E'Attestazione dell''Ente locale/Comune (All_6)', E'PDF,JPG,JPEG', E'ST.AMM.GESALLEGATIMODULOPAGAMENTO', E'FN.AMM.GESALLEGATIMODULOPAGAMENTO', E'Formati ammessi: PDF, JPEG. Dimensione massima ammessa: 500KB (Risoluzione massima 150 DPI - Bianco e Nero).', NULL, '500', E'N', E'2022-06-09', NULL, NOW(), NULL);
  
------------------------------------------------------------
-- Caricamento nella tabella DEC_TIPOLOGIA_AZIONE
------------------------------------------------------------
/* Data for the 'plus_dizionari.dec_tipologia_azione' table  (Records 1 - 8) */

INSERT INTO plus_dizionari.dec_tipologia_azione ("cod_applicazione", "cod_tipologia_azione", "des_tipologia_azione", "cod_tipo_azione_padre", "tipo_livello", "dat_inizio", "dat_fine", "dtt_tmst", "cod_attivita", "des_misura_attivita_yei")
VALUES 
  (E'PUOI2', E'200', E'Orientamento', NULL, 1, E'2022-06-09', NULL, NOW(), NULL, NULL),
  (E'PUOI2', E'200.20', E'Orientamento per l''individuazione delle opportunita'' occupazionali', E'200', 2, E'2022-06-09', NULL, NOW(), NULL, NULL),
  (E'PUOI2', E'300', E'Servizi al lavoro', NULL, 1, E'2022-06-09', NULL, NOW(), NULL, NULL),
  (E'PUOI2', E'100', E'Accoglienza e presa in carico', NULL, 1, E'2022-06-09', NULL, NOW(), NULL, NULL),
  (E'PUOI2', E'100.10', E'Definizione del Piano di Azione Personalizzato (PAI)', E'100', 2, E'2022-06-09', NULL, NOW(), NULL, NULL),
  (E'PUOI2', E'200.10', E'Orientamento specialistico', E'200', 2, E'2022-06-09', NULL, NOW(), NULL, NULL),
  (E'PUOI2', E'300.10', E'Servizi di tutoraggio didattico/organizzativo del Soggetto Promotore 16h \x0D\x0A', E'300', 2, E'2022-06-09', NULL, NOW(), NULL, NULL),
  (E'PUOI2', E'300.20', E'Servizi di formazione (tutoring ospitante) 15h a 40€/h', E'300', 2, E'2022-06-09', NULL, NOW(), NULL, NULL);
  
------------------------------------------------------------
-- Caricamento nella tabella DEC_TIPOLOGIA_SERVIZIO
------------------------------------------------------------

/* Data for the 'plus_dizionari.dec_tipologia_servizio' table  (Records 1 - 1) */

INSERT INTO plus_dizionari.dec_tipologia_servizio ("cod_applicazione", "cod_tipologia_servizio", "des_tipologia_servizio", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', E'PUOI2.001', E'Tirocini PUOI2', E'2022-06-09', NULL, NOW());
  
------------------------------------------------------------
-- Caricamento nella tabella DEC_TIPO_TIROCINIO
------------------------------------------------------------
/* Data for the 'plus_dizionari.dec_tipo_tirocinio' table  (Records 1 - 1) */

INSERT INTO plus_dizionari.dec_tipo_tirocinio ("cod_tipo_tirocinio", "cod_padre_tirocinio", "des_tipo_tirocinio", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2.TIROCINI', E'N.001', E'Tirocinio - 6 mesi', E'2022-06-09', NULL, NOW());
  
------------------------------------------------------------
-- Caricamento nella tabella DEC_TIPO_PAGAMENTO
------------------------------------------------------------
/* Data for the 'plus_dizionari.dec_tipo_pagamento' table  (Records 1 - 1) */

INSERT INTO plus_dizionari.dec_tipo_pagamento ("cod_applicazione", "cod_tipo_pagamento", "des_tipo_pagamento", "cod_tipopag_il", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', E'BOB', E'Bonifico bancario', E'3', E'2022-06-09', NULL, NOW());
  
------------------------------------------------------------
-- Caricamento nella tabella DEC_TIPO_CONVENZIONE
------------------------------------------------------------
/* Data for the 'plus_dizionari.dec_tipo_convenzione' table  (Records 1 - 1) */

INSERT INTO plus_dizionari.dec_tipo_convenzione ("cod_applicazione", "cod_tipo_convenzione", "des_tipo_convenzione", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', E'S', E'CONVENZIONE SINGOLA', E'2022-06-09', NULL, NOW());
  
------------------------------------------------------------
-- Caricamento nella tabella DEC_PERIODO_PAGAMENTO
------------------------------------------------------------
/* Data for the 'plus_dizionari.dec_periodo_pagamento' table  (Records 1 - 2) */

INSERT INTO plus_dizionari.dec_periodo_pagamento ("cod_applicazione", "cod_periodo_pagamento", "des_periodo_pagamento", "cod_perpag", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', E'PME', E'Pagamento mensile', E'B', E'2022-06-09', NULL, NOW()),
  (E'PUOI2', E'PUN', E'Pagamento unico', E'Q', E'2022-06-09', NULL, NOW());
  
------------------------------------------------------------
-- Caricamento nella tabella DEC_CONDIZIONE_TIROCINIO
------------------------------------------------------------
/* Data for the 'plus_dizionari.dec_condizione_tirocinio' table  (Records 1 - 4) */

INSERT INTO plus_dizionari.dec_condizione_tirocinio ("cod_applicazione", "cod_condizione_tirocinio", "des_condizione_tirocinio", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', (SELECT coalesce(MAX(COD_CONDIZIONE_TIROCINIO::numeric)+1, 0) FROM plus_dizionari.DEC_CONDIZIONE_TIROCINIO), E'Disoccupato/in mobilita''', E'2022-06-09', NULL, NOW());
  
INSERT INTO plus_dizionari.dec_condizione_tirocinio ("cod_applicazione", "cod_condizione_tirocinio", "des_condizione_tirocinio", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', (SELECT coalesce(MAX(COD_CONDIZIONE_TIROCINIO::numeric)+1, 0) FROM plus_dizionari.DEC_CONDIZIONE_TIROCINIO), E'Inoccupato', E'2022-06-09', NULL, NOW());
  
INSERT INTO plus_dizionari.dec_condizione_tirocinio ("cod_applicazione", "cod_condizione_tirocinio", "des_condizione_tirocinio", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', (SELECT coalesce(MAX(COD_CONDIZIONE_TIROCINIO::numeric)+1, 0) FROM plus_dizionari.DEC_CONDIZIONE_TIROCINIO), E'Disabile', E'2022-06-09', NULL, NOW());
  
INSERT INTO plus_dizionari.dec_condizione_tirocinio ("cod_applicazione", "cod_condizione_tirocinio", "des_condizione_tirocinio", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PUOI2', (SELECT coalesce(MAX(COD_CONDIZIONE_TIROCINIO::numeric)+1, 0) FROM plus_dizionari.DEC_CONDIZIONE_TIROCINIO), E'Persona svantaggiata (Regolamento CE n.800/2008, art.2)', E'2022-06-09', NULL, NOW());
  
 
Select ' ... Aggiungo 1 record per PUOI2 sulla tabella PROGETTI_SIGMA .. ';


INSERT INTO plus_dizionari.PROGETTI_SIGMA ("ide_progetto_sigma", "cod_locale_progetto", "aaaa_competenza", "cod_misura", "cod_applicazione", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (nextval('plus_dizionari.seq_progetti_sigma'), E'1158-75_PUOI2', E'2022-06-09', NULL, E'PUOI2', E'2022-06-09', NULL, NOW());
   