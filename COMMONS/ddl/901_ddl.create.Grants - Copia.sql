
\echo 'executing script 901_ddl.create.Grants.sql';

\c :dbName :dbSystemUser

/* Grants of the role 'operatore' */

GRANT USAGE
  ON SCHEMA :userprof TO :userapp;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.appl_int TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.applicazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.condizione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.funzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.funzione_ruolo_strumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.monitoraggio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_app_ruolo_strumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_applicazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_ruolo_strumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_applicazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_applicazione_servizio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_profilo_funzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.ruolo_strumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userprof.seq_appl_int TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userprof.seq_appl_int TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :userprof.seq_appl_int TO :usersill WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :userprof.seq_sil TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userprof.seq_soggetto_profilo_applicazi TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.soggetto_profilo_applicazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.strumento_categoria TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_categoria TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_profilo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_servizio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_strumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tipo_gruppo TO :userapp WITH GRANT OPTION;

GRANT USAGE
  ON SCHEMA :usersill TO :userapp;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.allegati TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.appl_int_tiposerv TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.conv_soggetto_promotore TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione_allegati TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.datore_lavoro TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr TO :userapp;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_pai TO :userapp;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_richieste_pagamento TO :userapp;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_disponibilita_interventi TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_ente TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_anag TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_competenze TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conosc_informatiche TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conosc_lingue TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conoscenze_aree TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_mobilitageog TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_modalitalav TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_tipocontratto TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_domicilio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_esperienza_mansioni TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_esperienza_settore TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_residenza TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_titolo_studio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabbisogni_occupazionali TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_sede_legale TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_sedi_lavoro TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_destinatario TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_modulo_pagamento TO :userapp WITH GRANT OPTION;
/*

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pag_info_pagamento TO :userapp WITH GRANT OPTION;

*/
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_richiesta_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.esito_azione_intervento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.estrazione_sigma TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.estrazione_sigma_richiesta_pag TO :userapp WITH GRANT OPTION;
  
GRANT EXECUTE
  ON FUNCTION :usersill.fn_get_data_fine_effettiva(inideintervento numeric) TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_updrichpag() TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.fnc_registra_soggprom(varchar) TO :userapp WITH GRANT OPTION;
  
GRANT EXECUTE
  ON FUNCTION :usersill.sp_registra_intermediari(varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar) TO :userapp WITH GRANT OPTION;  
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.fondo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_assicurazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_attore TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_attributo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_convenzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_dati_tirocinio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_obiettivi TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_proroga_sospensione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_sede TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_tirocinio_cond TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_albo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_analisi_profili TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_anzianita_disoccupazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azienda_utilizzatrice TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_esito_proposta TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_allegati TO :userapp WITH GRANT OPTION;  
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_profiling TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_consuntivo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_bilancio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_candidature TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_candidature_mezzitrasp TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_categoria181 TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_categorie_particolari TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_competenze TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_conoscenze_informatiche TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_convocazioni TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_dati_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni_dettaglio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_did TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_elementi TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_ente TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esito_azint_costo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienza_intermediata TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_formazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_professionali TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_studio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istituto TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istituto_eventi TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istitutocert TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_lingue_conosciute TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_liste_speciali TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_nucleo_familiare TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_obbligo_formativo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_pai_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patente TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patentino TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio_chiusura TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_recapiti TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_redditi TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_reddito_dichiarato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_richiesta_bonus TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_richiesta_bonus_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status_dich TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status_storico TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_straniero TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_sussidio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_sussidio_stato_pag TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_tiposerv TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lavoratore TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.log_wsc TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intatt_allegati TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intatt_dett_rata TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intervento_attore TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pag_stato_procedura TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pagamento_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.origine_comunicazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.rapporto_lavoro TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.rapporto_lavoro_batch TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.regola_ambito_ricerca TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.registro TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pag_stato_procedura TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.RICHIESTA_PAG_INFO_PAGAMENTO TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_allegati TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_allegati TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_conv_soggetto_promotore TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_convenzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_ddr TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl_disponibilita_intervent TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl_ente TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl_fabbisogni_occupazional TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl_sedelav TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_elenco TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_esito_azione_intervento TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_estrazione_sigma TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_fondo TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_assicurazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_attore TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_convenzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_obiettivi TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_proroga_sospens TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_sede TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_azienda_utilizzatrice TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_azioni_pai TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :usersill.seq_lav_azioni_pai_allegati TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :usersill.seq_lav_detrazioni_dettaglio TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_ente TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_esp_intermediata TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_istituto TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_istituto_eventi TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_istitutocert TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_patto_servizio TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_richiesta_bonus TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_sussidio TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lavoratore TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_modulo_intervento_attore TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_prg_modulo TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_profilo TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_registro TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :usersill.seq_richiesta_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_strint_attributo TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_strint_tipo TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_template_azioni_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_template_pai TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_cancellazione_azienda(incodfiscale varchar, out coderrore integer, out msgerrore varchar) TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_elimina_lavoratore(incodfiscale varchar, out coderrore integer, out msgerrore varchar) TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_test_canc_convocazioni(inidelavoratore integer, inprgconvocazione integer, out coderrore integer, out msgerrore varchar) TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_verifica_elimina_azienda(incodfiscale varchar, out coderrore integer, out msgerrore varchar, out outverificaconvenzione varchar, out outverificatirocinio varchar) TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_attore TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_attributo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_macrostrumento_strum TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo_macrostrumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo_tiposerv TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_costo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_esiti TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_esiti_ucs TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_allegati TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai_misure TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai_stato TO :userapp WITH GRANT OPTION;
  
GRANT SELECT
  ON :usersill.tirocinio TO :userapp WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_appl_int TO :userapp WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_dec_dettaglioistituto TO :userapp WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_lav_esperienzestudio TO :userapp WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_lav_istituto TO :userapp WITH GRANT OPTION;

GRANT USAGE
  ON SCHEMA :userj TO :userapp;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.ente TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda_altreinfo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_allegati TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_altreinfo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_ente TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_stato TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_tiposerv TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.persona TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_iscrizione_azienda TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_iscrizione_persona TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_soggetto TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_spc_regola TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.soggetto TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_applicazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_applicazione_profilo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_applicazione_servizio TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_autorizzazione_dati TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_autorizzazione_funzionale TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_dec_gruppo_regola TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_dec_tipo_codifica_regola TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_regola TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento_funzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento_ruolo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento_ruolo_funzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente_applicazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente_applicazione_profilo TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente_online TO :userapp WITH GRANT OPTION;

GRANT SELECT
  ON :userj.v_iscrizioni TO :userapp WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE jplus_data TO :userapp;

GRANT CREATE
  ON TABLESPACE jplus_idx TO :userapp;

GRANT USAGE
  ON SCHEMA plus_classificazione TO :userapp;

GRANT SELECT, USAGE
  ON plus_classificazione.seq_intermediari TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON plus_classificazione.seq_intermediari TO :usersill WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON plus_classificazione.seq_intermediari_filiali TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albi TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_intermediari TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_sedi TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ampiezza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_areaprofess TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv0 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv1 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv2 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv3 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv4 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie181 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie_protette TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ccnl TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_cittadinanze TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, REFERENCES
  ON plus_classificazione.tab_comune_intermediari TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_comuni TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_condizione_status TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_esperienzelav TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_figuraprofess TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticaconosc TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticagradoconosc TO :userapp WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE ,REFERENCES
  ON plus_classificazione.tab_intermediari TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_intermediari_filiali TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingue TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingueconoscenza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_listespeciali TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_livcontrattuale TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_modalitalav TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_motivo_permesso TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_nazioni TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_province TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_profiling TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_profiling TO :userappj WITH GRANT OPTION;
    
GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv0 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv1 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv2 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv3 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv4 TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_rapportilavoro TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_regioni TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_sesso TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_status_straniero TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_statusoccupaz TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiolivello TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiotitolo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipo_intermediario TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoattestaz TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoazienda TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipologia_contr TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentiguida TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentini TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_ateco TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_qualprof TO :userapp WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_data TO :userapp;

GRANT USAGE
  ON SCHEMA plus_dizionari TO :userapp;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenza_elementi TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_area_comp TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_tipologia_comp TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_allegati TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_competenza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_riferimento TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attributi_costo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attivita TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_evento_mobilita TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_fine_did TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_calcolo_ore TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_calcolo_ore TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_calcolo_ore TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_calcolo_ore TO :userj WITH GRANT OPTION;
      
GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_certificatori TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_competenze TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_condizione_tirocinio TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_criterio_sosp_cons TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_destinatario TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_dettaglioistituto TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_elementi TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_ente_erogatore TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_azione_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_convocazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_proposta TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_eventi_intervento TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_fascia_eta TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_formato_file TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_grado_elemento_competenza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_lingueconoscenzacef TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_liv_tipo_ammortizzatore TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_mesi TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_misure TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_modalita_convocazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_cessazione_tirocini TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_convocazione TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto_patto TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_natura_cup TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_origine_info TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_periodo_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_profili TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sogg_assicura TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stati_file_profilo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_documento TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_elenco TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione_persona TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_lavoratore TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_procedura TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_selezione_dettaglio TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_area TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_macrostrumento TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidi_ente_erogatore TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidio TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_target TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_territorio TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_ambito_criterio TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_attributo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_competenza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_convenzione TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo_piano TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_docenza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_elemento TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_evento_mobilita TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_incentivo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_pagamento TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_param_report TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_patto TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_processo_attivita TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_reddito TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_report TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_soggetto TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_tirocinio TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_raggruppamento TO :userapp WITH GRANT OPTION;  

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_raggruppamento TO :userappj WITH GRANT OPTION; 
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_raggruppamento TO :userprof WITH GRANT OPTION;    

GRANT SELECT, INSERT, REFERENCES
  ON plus_dizionari.raggruppamento_intermediari TO :userapp WITH GRANT OPTION;  

GRANT SELECT, INSERT, REFERENCES
  ON plus_dizionari.raggruppamento_intermediari TO :userappj WITH GRANT OPTION; 
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.raggruppamento_intermediari TO :userprof WITH GRANT OPTION;    

GRANT SELECT, REFERENCES
  ON plus_dizionari.raggruppamento_intermediari TO :usersill WITH GRANT OPTION; 
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.raggruppamento_intermediari TO :userj WITH GRANT OPTION;    
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipoistituto TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_azione TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_competenza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_fondo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_servizio TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipopag_pai TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_verbi TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_voce_costo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_wsc TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.progetti_sigma TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.prg_sigma TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_competenze TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_comportamenti TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON plus_dizionari.seq_prg_sigma TO :userapp WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON plus_dizionari.seq_progetti_sigma TO :userapp WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambiti_disciplinari TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambito_territoriale TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_comuni_cap TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_corsotipo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_documenti TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ente_rilascio_doc TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_formagiuridica TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_interventi TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mezzitrasp TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mobilitageog TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_naturagiuridica TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_obbligoformativo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_questure TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ripterritoriale TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statocivile TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statoesperienza TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tipodisabilita TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tiporecapito TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_trasferte TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_unita_tempo TO :userapp WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tipo_evento_causa_mobilita TO :userapp WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_idx TO :userapp;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer) TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer, occur_index integer) TO :userapp WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(varchar, varchar) TO :userapp WITH GRANT OPTION;

/* Grants of the role 'profiler' */

GRANT CREATE, USAGE
  ON SCHEMA :userprof TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.appl_int TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.applicazione TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.applicazione TO plus_dizionari;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.condizione TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.funzione TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.funzione_ruolo_strumento TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.monitoraggio TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.profilo_app_ruolo_strumento TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.profilo_applicazione TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.profilo_ruolo_strumento TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.regola TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.regola_applicazione TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.regola_applicazione_servizio TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.regola_profilo_funzione TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.ruolo_strumento TO :userprof;

GRANT SELECT, UPDATE, USAGE
  ON :userprof.seq_appl_int TO :userprof;

GRANT SELECT, UPDATE, USAGE
  ON :userprof.seq_sil TO :userprof;

GRANT SELECT, UPDATE, USAGE
  ON :userprof.seq_soggetto_profilo_applicazi TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.soggetto_profilo_applicazione TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.strumento_categoria TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.tab_categoria TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.tab_profilo TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.tab_servizio TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.tab_strumento TO :userprof;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userprof.tipo_gruppo TO :userprof;

GRANT USAGE
  ON SCHEMA :usersill TO :userprof;

GRANT USAGE
  ON SCHEMA :userj TO :userprof;

GRANT CREATE
  ON TABLESPACE jplus_data TO :userprof;

GRANT CREATE
  ON TABLESPACE jplus_idx TO :userprof;

GRANT USAGE
  ON SCHEMA plus_classificazione TO :userprof;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albi TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_intermediari TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_sedi TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ampiezza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_areaprofess TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv0 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv1 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv2 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv3 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv4 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie181 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie_protette TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ccnl TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_cittadinanze TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_comune_intermediari TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_comuni TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_condizione_status TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_esperienzelav TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_figuraprofess TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticaconosc TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticagradoconosc TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_intermediari TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_intermediari_filiali TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingue TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingueconoscenza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_listespeciali TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_livcontrattuale TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_modalitalav TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_motivo_permesso TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_nazioni TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_province TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv0 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv1 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv2 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv3 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv4 TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_rapportilavoro TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_regioni TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_sesso TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_status_straniero TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_statusoccupaz TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiolivello TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiotitolo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipo_intermediario TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoattestaz TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoazienda TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipologia_contr TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentiguida TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentini TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_ateco TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_qualprof TO :userprof WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_data TO :userprof;

GRANT USAGE
  ON SCHEMA plus_dizionari TO :userprof;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenza_elementi TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_area_comp TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_tipologia_comp TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_allegati TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_competenza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_riferimento TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attributi_costo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attivita TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_evento_mobilita TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_fine_did TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_certificatori TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_competenze TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_condizione_tirocinio TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_criterio_sosp_cons TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_destinatario TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_dettaglioistituto TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_elementi TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_ente_erogatore TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_azione_pai TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_convocazione TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_proposta TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_eventi_intervento TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_fascia_eta TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_formato_file TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_grado_elemento_competenza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_lingueconoscenzacef TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_liv_tipo_ammortizzatore TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_mesi TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_misure TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_modalita_convocazione TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_cessazione_tirocini TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_convocazione TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto_patto TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_natura_cup TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_origine_info TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_periodo_pagamento TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_profili TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sogg_assicura TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stati_file_profilo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_documento TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_elenco TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione_persona TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_lavoratore TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_procedura TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_selezione_dettaglio TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_area TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_macrostrumento TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidi_ente_erogatore TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidio TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_target TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_territorio TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_ambito_criterio TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_attributo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_competenza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_convenzione TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo_piano TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_docenza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_elemento TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_evento_mobilita TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_incentivo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_pagamento TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_param_report TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_patto TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_processo_attivita TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_reddito TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_report TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_soggetto TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_tirocinio TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipoistituto TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_azione TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_competenza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_fondo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_servizio TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipopag_pai TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_verbi TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_voce_costo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_wsc TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.prg_sigma TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.progetti_sigma TO :userprof WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_competenze TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_comportamenti TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambiti_disciplinari TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambito_territoriale TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_comuni_cap TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_corsotipo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_documenti TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ente_rilascio_doc TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_formagiuridica TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_interventi TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mezzitrasp TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mobilitageog TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_naturagiuridica TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_obbligoformativo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_questure TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ripterritoriale TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statocivile TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statoesperienza TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tipodisabilita TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tiporecapito TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_trasferte TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_unita_tempo TO :userprof WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tipo_evento_causa_mobilita TO :userprof WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_idx TO :userprof;

/* Grants of the role 'sill' */

GRANT USAGE
  ON SCHEMA :userprof TO :usersill;

GRANT SELECT, INSERT, REFERENCES
  ON :userprof.appl_int TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.applicazione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.condizione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.funzione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.funzione_ruolo_strumento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.monitoraggio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.profilo_app_ruolo_strumento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.profilo_applicazione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.profilo_ruolo_strumento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.regola TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.regola_applicazione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.regola_applicazione_servizio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.regola_profilo_funzione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.ruolo_strumento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.soggetto_profilo_applicazione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.strumento_categoria TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.tab_categoria TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.tab_profilo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.tab_servizio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.tab_strumento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON :userprof.tipo_gruppo TO :usersill WITH GRANT OPTION;

GRANT CREATE, USAGE
  ON SCHEMA :usersill TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.allegati TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.appl_int_tiposerv TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.conv_soggetto_promotore TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.convenzione TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.convenzione_allegati TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.convenzione_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.datore_lavoro TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_pai TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_richieste_pagamento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_disponibilita_interventi TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_ente TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_anag TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_competenze TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_conosc_informatiche TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_conosc_lingue TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_conoscenze_aree TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_disp_mobilitageog TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_disp_modalitalav TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_disp_tipocontratto TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_domicilio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_esperienza_mansioni TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_esperienza_settore TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_residenza TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabb_titolo_studio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_fabbisogni_occupazionali TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_sede_legale TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.dl_sedi_lavoro TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.elenco TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.elenco_destinatario TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.elenco_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.elenco_modulo_pagamento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.elenco_richiesta_pagamento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.esito_azione_intervento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.estrazione_sigma TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.estrazione_sigma_richiesta_pag TO :usersill WITH GRANT OPTION;
  
GRANT EXECUTE
  ON FUNCTION :usersill.fn_get_data_fine_effettiva(inideintervento numeric) TO :usersill;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_updrichpag() TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.fondo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_assicurazione TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_attore TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_attributo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_convenzione TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_dati_tirocinio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_obiettivi TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_pai TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_proroga_sospensione TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_sede TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.intervento_tirocinio_cond TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_albo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_analisi_profili TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_anzianita_disoccupazione TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_azienda_utilizzatrice TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_azioni_esito_proposta TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_azioni_pai TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_azioni_pai_consuntivo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_azioni_pai_allegati TO :usersill ;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_bilancio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_candidature TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_candidature_mezzitrasp TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_categoria181 TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_categorie_particolari TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_competenze TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_conoscenze_informatiche TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_convocazioni TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_dati_pagamento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_detrazioni TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_detrazioni_dettaglio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_detrazioni_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_did TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_elementi TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_ente TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_esito_azint_costo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_esperienza_intermediata TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_esperienze_formazione TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_esperienze_professionali TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_esperienze_studio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_istituto TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_istituto_eventi TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_istitutocert TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_lingue_conosciute TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_liste_speciali TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_nucleo_familiare TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_obbligo_formativo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_pai TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_pai_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_patente TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_patentino TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_patto_servizio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_patto_servizio_chiusura TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_patto_servizio_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_recapiti TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_redditi TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_reddito_dichiarato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_richiesta_bonus TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_richiesta_bonus_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_status TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_status_dich TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_status_storico TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_straniero TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_sussidio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_sussidio_stato_pag TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lav_tiposerv TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.lavoratore TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.log_wsc TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.modulo_intatt_allegati TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.modulo_intatt_dett_rata TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.modulo_intervento_attore TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.modulo_pag_stato_procedura TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.modulo_pagamento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.modulo_pagamento_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.origine_comunicazione TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.rapporto_lavoro TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.rapporto_lavoro_batch TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.regola_ambito_ricerca TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.richiesta_pag_stato_procedura TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.RICHIESTA_PAG_INFO_PAGAMENTO TO :usersill;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.richiesta_pagamento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.richiesta_pagamento_allegati TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.richiesta_pagamento_pai TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.richiesta_pagamento_stato TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_allegati TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_conv_soggetto_promotore TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_convenzione TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_dl TO :usersill;

GRANT SELECT, USAGE
  ON :usersill.seq_ddr TO :usersill WITH GRANT OPTION;
  
GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_dl_disponibilita_intervent TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_dl_ente TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_dl_fabbisogni_occupazional TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_dl_sedelav TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_elenco TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_esito_azione_intervento TO :usersill;

GRANT SELECT, USAGE
  ON :usersill.seq_estrazione_sigma TO :usersill WITH GRANT OPTION;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_fondo TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_intervento TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_intervento_assicurazione TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_intervento_attore TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_intervento_convenzione TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_intervento_obiettivi TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_intervento_proroga_sospens TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_intervento_sede TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_azienda_utilizzatrice TO :usersill;
  
GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_azioni_pai TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_azioni_pai_allegati TO :usersill;
  
GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_detrazioni_dettaglio TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_ente TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_esp_intermediata TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_istituto TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_istituto_eventi TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_istitutocert TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_patto_servizio TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_richiesta_bonus TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lav_sussidio TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_lavoratore TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_modulo_intervento_attore TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_pai TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_prg_modulo TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_profilo TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_registro TO :usersill;
  
GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_richiesta_pagamento TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_strint_attributo TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_strint_tipo TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_template_azioni_pai TO :usersill;

GRANT SELECT, UPDATE, USAGE
  ON :usersill.seq_template_pai TO :usersill;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_cancellazione_azienda(incodfiscale varchar, out coderrore integer, out msgerrore varchar) TO :usersill;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_elimina_lavoratore(incodfiscale varchar, out coderrore integer, out msgerrore varchar) TO :usersill;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_test_canc_convocazioni(inidelavoratore integer, inprgconvocazione integer, out coderrore integer, out msgerrore varchar) TO :usersill;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_verifica_elimina_azienda(incodfiscale varchar, out coderrore integer, out msgerrore varchar, out outverificaconvenzione varchar, out outverificatirocinio varchar) TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.strint_attore TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.strint_attributo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.strint_macrostrumento_strum TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.strint_pagamento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.strint_tipo TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.strint_tipo_macrostrumento TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.strint_tipo_tiposerv TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_azioni_pai TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_azioni_pai_costo TO :usersill;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_azioni_pai_esiti TO :usersill;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_azioni_pai_esiti_ucs TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_azioni_allegati TO :usersill;  

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_pai TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_pai_misure TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.template_pai_stato TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.tirocinio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.v_appl_int TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.v_dec_dettaglioistituto TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.v_lav_esperienzestudio TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.v_lav_istituto TO :usersill;

GRANT USAGE
  ON SCHEMA :userj TO :usersill;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.ente TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda_stato TO :usersill WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_stato TO :usersill WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_allegati TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.persona TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.soggetto TO :usersill WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE jplus_data TO :usersill;

GRANT CREATE
  ON TABLESPACE jplus_idx TO :usersill;

GRANT USAGE
  ON SCHEMA plus_classificazione TO :usersill;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albi TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_intermediari TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_sedi TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ampiezza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_areaprofess TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv0 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv1 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv2 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv3 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv4 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie181 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie_protette TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ccnl TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_cittadinanze TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, REFERENCES
  ON plus_classificazione.tab_comune_intermediari TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_comuni TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_condizione_status TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_esperienzelav TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_figuraprofess TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticaconosc TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticagradoconosc TO :usersill WITH GRANT OPTION;

GRANT SELECT, INSERT, REFERENCES
  ON plus_classificazione.tab_intermediari TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_intermediari_filiali TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingue TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingueconoscenza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_listespeciali TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_livcontrattuale TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_modalitalav TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_motivo_permesso TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_nazioni TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_province TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_profiling TO :usersill WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv0 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv1 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv2 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv3 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv4 TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_rapportilavoro TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_regioni TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_sesso TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_status_straniero TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_statusoccupaz TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiolivello TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiotitolo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipo_intermediario TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoattestaz TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoazienda TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipologia_contr TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentiguida TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentini TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_ateco TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_qualprof TO :usersill WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_data TO :usersill;

GRANT USAGE
  ON SCHEMA plus_dizionari TO :usersill;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenza_elementi TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_area_comp TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_tipologia_comp TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_allegati TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_competenza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_riferimento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attributi_costo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attivita TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_evento_mobilita TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_fine_did TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_certificatori TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_competenze TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_condizione_tirocinio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_criterio_sosp_cons TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_destinatario TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_dettaglioistituto TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_elementi TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_ente_erogatore TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_azione_pai TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_convocazione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_proposta TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_eventi_intervento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_fascia_eta TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_formato_file TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_grado_elemento_competenza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_lingueconoscenzacef TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_liv_tipo_ammortizzatore TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_mesi TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_misure TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_modalita_convocazione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_cessazione_tirocini TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_convocazione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto_patto TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_natura_cup TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_origine_info TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_periodo_pagamento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_profili TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sogg_assicura TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stati_file_profilo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_documento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_elenco TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione_persona TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_lavoratore TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_procedura TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_selezione_dettaglio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_area TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_macrostrumento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidi_ente_erogatore TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_target TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_territorio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_ambito_criterio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_attributo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_competenza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_convenzione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo_piano TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_docenza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_elemento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_evento_mobilita TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_incentivo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_pagamento TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_param_report TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_patto TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_processo_attivita TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_reddito TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_report TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_soggetto TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_tirocinio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipoistituto TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_azione TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_competenza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_fondo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_servizio TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipopag_pai TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_verbi TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_voce_costo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_wsc TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.prg_sigma TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.progetti_sigma TO :usersill WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_competenze TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_comportamenti TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambiti_disciplinari TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambito_territoriale TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_comuni_cap TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_corsotipo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_documenti TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ente_rilascio_doc TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_formagiuridica TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_interventi TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mezzitrasp TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mobilitageog TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_naturagiuridica TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_obbligoformativo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_questure TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ripterritoriale TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statocivile TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statoesperienza TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tipodisabilita TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tiporecapito TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_trasferte TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_unita_tempo TO :usersill WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tipo_evento_causa_mobilita TO :usersill WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_idx TO :usersill;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer) TO :usersill WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer, occur_index integer) TO :usersill WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(varchar, varchar) TO :usersill WITH GRANT OPTION;

/* Grants of the role 'j' */

GRANT USAGE
  ON SCHEMA :userprof TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.appl_int TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.applicazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.condizione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.funzione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.funzione_ruolo_strumento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.monitoraggio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_app_ruolo_strumento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_applicazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_ruolo_strumento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_applicazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_applicazione_servizio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_profilo_funzione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.ruolo_strumento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.soggetto_profilo_applicazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.strumento_categoria TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_categoria TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_profilo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_servizio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_strumento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tipo_gruppo TO :userj WITH GRANT OPTION;

GRANT USAGE
  ON SCHEMA :usersill TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.allegati TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.appl_int_tiposerv TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.conv_soggetto_promotore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione_allegati TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.datore_lavoro TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_pai TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_richieste_pagamento TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_disponibilita_interventi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_ente TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_anag TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_competenze TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conosc_informatiche TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conosc_lingue TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conoscenze_aree TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_mobilitageog TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_modalitalav TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_tipocontratto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_domicilio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_esperienza_mansioni TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_esperienza_settore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_residenza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_titolo_studio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabbisogni_occupazionali TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_sede_legale TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_sedi_lavoro TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_destinatario TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_modulo_pagamento TO :userj WITH GRANT OPTION;
/*

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pag_info_pagamento TO :userj WITH GRANT OPTION;

*/
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_richiesta_pagamento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.esito_azione_intervento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.estrazione_sigma TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.estrazione_sigma_richiesta_pag TO :userj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.fondo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_assicurazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_attore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_attributo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_convenzione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_dati_tirocinio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_obiettivi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_proroga_sospensione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_sede TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_tirocinio_cond TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_albo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_analisi_profili TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_anzianita_disoccupazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azienda_utilizzatrice TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_esito_proposta TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_consuntivo TO :userj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_allegati TO :userj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_bilancio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_candidature TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_candidature_mezzitrasp TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_categoria181 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_categorie_particolari TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_competenze TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_conoscenze_informatiche TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_convocazioni TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_dati_pagamento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni_dettaglio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_did TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_elementi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_ente TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esito_azint_costo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienza_intermediata TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_formazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_professionali TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_studio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istituto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istituto_eventi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istitutocert TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_lingue_conosciute TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_liste_speciali TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_nucleo_familiare TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_obbligo_formativo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_pai_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patente TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patentino TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio_chiusura TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_recapiti TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_redditi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_reddito_dichiarato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_richiesta_bonus TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_richiesta_bonus_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status_dich TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status_storico TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_straniero TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_sussidio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_sussidio_stato_pag TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_tiposerv TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lavoratore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.log_wsc TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intatt_allegati TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intatt_dett_rata TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intervento_attore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pag_stato_procedura TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pagamento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pagamento_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.origine_comunicazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.rapporto_lavoro TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.rapporto_lavoro_batch TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.regola_ambito_ricerca TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pag_stato_procedura TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.RICHIESTA_PAG_INFO_PAGAMENTO TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_allegati TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_stato TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_attore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_attributo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_macrostrumento_strum TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_pagamento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo_macrostrumento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo_tiposerv TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_costo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_esiti TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_esiti_ucs TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_allegati TO :userj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai_misure TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai_stato TO :userj WITH GRANT OPTION;

GRANT CREATE, USAGE
  ON SCHEMA :userj TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.ente TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_azienda TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_azienda_altreinfo TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_azienda_stato TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_persona TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_persona_allegati TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_persona_altreinfo TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_persona_ente TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_persona_stato TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.iscrizione_persona_tiposerv TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.persona TO :userj;

GRANT SELECT, UPDATE, USAGE
  ON :userj.seq_iscrizione_azienda TO :userj;

GRANT SELECT, UPDATE, USAGE
  ON :userj.seq_iscrizione_persona TO :userj;

GRANT SELECT, UPDATE, USAGE
  ON :userj.seq_soggetto TO :userj;

GRANT SELECT, UPDATE, USAGE
  ON :userj.seq_spc_regola TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.soggetto TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_applicazione TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_applicazione_profilo TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_applicazione_servizio TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_autorizzazione_dati TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_autorizzazione_funzionale TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_dec_gruppo_regola TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_dec_tipo_codifica_regola TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_regola TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_strumento TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_strumento_funzione TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_strumento_ruolo TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.spc_strumento_ruolo_funzione TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.utente TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.utente_applicazione TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.utente_applicazione_profilo TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.utente_online TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :userj.v_iscrizioni TO :userj;

GRANT CREATE
  ON TABLESPACE jplus_data TO :userj;

GRANT CREATE
  ON TABLESPACE jplus_idx TO :userj;

GRANT USAGE
  ON SCHEMA plus_classificazione TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_albi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_albo_intermediari TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_albo_sedi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_ampiezza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_areaprofess TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_atecoliv0 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_atecoliv1 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_atecoliv2 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_atecoliv3 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_atecoliv4 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_categorie181 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_categorie_protette TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_ccnl TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_cittadinanze TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_comune_intermediari TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_comuni TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_condizione_status TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_esperienzelav TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_figuraprofess TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_informaticaconosc TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_informaticagradoconosc TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_intermediari TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_intermediari_filiali TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_lingue TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_lingueconoscenza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_listespeciali TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_livcontrattuale TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_modalitalav TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_motivo_permesso TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_nazioni TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_province TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_qualprofliv0 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_qualprofliv1 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_qualprofliv2 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_qualprofliv3 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_qualprofliv4 TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_rapportilavoro TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_regioni TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_sesso TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_status_straniero TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_statusoccupaz TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_studiolivello TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_studiotitolo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_tipo_intermediario TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_tipoattestaz TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_tipoazienda TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_tipologia_contr TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_tipopatentiguida TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tab_tipopatentini TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tabella_ateco TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_classificazione.tabella_qualprof TO :userj WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_data TO :userj;

GRANT USAGE
  ON SCHEMA plus_dizionari TO :userj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.competenza_elementi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.competenze_area_comp TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.competenze_tipologia_comp TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_allegati TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_area_competenza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_attributi_costo TO :userj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_area_riferimento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_attivita TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_causa_evento_mobilita TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_causa_fine_did TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_certificatori TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_competenze TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_condizione_tirocinio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_criterio_sosp_cons TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_destinatario TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_dettaglioistituto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_elementi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_ente_erogatore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_esito_azione_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_esito_convocazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_esito_proposta TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_eventi_intervento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_fascia_eta TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_formato_file TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_grado_elemento_competenza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_lingueconoscenzacef TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_liv_tipo_ammortizzatore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_mesi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_misure TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_modalita_convocazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_motivo_cessazione_tirocini TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_motivo_convocazione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto_patto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_natura_cup TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_origine_info TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_periodo_pagamento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_profili TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_sogg_assicura TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stati_file_profilo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stato_documento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stato_elenco TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione_persona TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stato_lavoratore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stato_procedura TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_stato_selezione_dettaglio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_strint_area TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_strint_macrostrumento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_sussidi_ente_erogatore TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_sussidio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_target TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_territorio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_ambito_criterio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_attributo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_competenza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_convenzione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_costo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_costo_piano TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_docenza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_elemento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_evento_mobilita TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_incentivo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_pagamento TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_param_report TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_patto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_processo_attivita TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_reddito TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_report TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_soggetto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipo_tirocinio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipoistituto TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipologia_azione TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipologia_competenza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipologia_fondo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipologia_servizio TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_tipopag_pai TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_verbi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_voce_costo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.dec_wsc TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.prg_sigma TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.progetti_sigma TO :userj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.profilo_competenze TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.profilo_comportamenti TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_ambiti_disciplinari TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_ambito_territoriale TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_comuni_cap TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_corsotipo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_documenti TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_ente_rilascio_doc TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_formagiuridica TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_interventi TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_mezzitrasp TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_mobilitageog TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_naturagiuridica TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_obbligoformativo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_questure TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_ripterritoriale TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_statocivile TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_statoesperienza TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_tipodisabilita TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_tiporecapito TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_trasferte TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tab_unita_tempo TO :userj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON plus_dizionari.tipo_evento_causa_mobilita TO :userj WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_idx TO :userj;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer) TO :userj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer, occur_index integer) TO :userj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(varchar, varchar) TO :userj WITH GRANT OPTION;

/* Grants of the role 'joperatore' */

GRANT USAGE
  ON SCHEMA :userprof TO :userappj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.appl_int TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.applicazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.condizione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.funzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.funzione_ruolo_strumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.monitoraggio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_app_ruolo_strumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_applicazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.profilo_ruolo_strumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_applicazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_applicazione_servizio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.regola_profilo_funzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.ruolo_strumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userprof.seq_appl_int TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userprof.seq_sil TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userprof.seq_soggetto_profilo_applicazi TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.soggetto_profilo_applicazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.strumento_categoria TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_categoria TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_profilo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_servizio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tab_strumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userprof.tipo_gruppo TO :userappj WITH GRANT OPTION;

GRANT USAGE
  ON SCHEMA :usersill TO :userappj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.allegati TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.appl_int_tiposerv TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.conv_soggetto_promotore TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione_allegati TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.convenzione_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.datore_lavoro TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr TO :userappj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_pai TO :userappj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE
  ON :usersill.ddr_richieste_pagamento TO :userappj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_disponibilita_interventi TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_ente TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_anag TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_competenze TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conosc_informatiche TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conosc_lingue TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_conoscenze_aree TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_mobilitageog TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_modalitalav TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_disp_tipocontratto TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_domicilio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_esperienza_mansioni TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_esperienza_settore TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_residenza TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabb_titolo_studio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_fabbisogni_occupazionali TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_sede_legale TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.dl_sedi_lavoro TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_destinatario TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_modulo_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.elenco_richiesta_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.esito_azione_intervento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.estrazione_sigma TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.estrazione_sigma_richiesta_pag TO :userappj WITH GRANT OPTION;
  
GRANT EXECUTE
  ON FUNCTION :usersill.fn_get_data_fine_effettiva(inideintervento numeric) TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_updrichpag() TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.fnc_registra_soggprom(varchar) TO :userappj WITH GRANT OPTION;
  
GRANT EXECUTE
  ON FUNCTION :usersill.sp_registra_intermediari(varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar) TO :userappj WITH GRANT OPTION;  
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.fondo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_assicurazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_attore TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_attributo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_convenzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_dati_tirocinio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_obiettivi TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_proroga_sospensione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_sede TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.intervento_tirocinio_cond TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_albo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_analisi_profili TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_anzianita_disoccupazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azienda_utilizzatrice TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_esito_proposta TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_profiling TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_allegati TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_azioni_pai_consuntivo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_bilancio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_candidature TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_candidature_mezzitrasp TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_categoria181 TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_categorie_particolari TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_competenze TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_conoscenze_informatiche TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_convocazioni TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_dati_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni_dettaglio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_detrazioni_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_did TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_elementi TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_ente TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esito_azint_costo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienza_intermediata TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_formazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_professionali TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_esperienze_studio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istituto TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istituto_eventi TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_istitutocert TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_lingue_conosciute TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_liste_speciali TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_nucleo_familiare TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_obbligo_formativo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_pai_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patente TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patentino TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio_chiusura TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_patto_servizio_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_recapiti TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_redditi TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_reddito_dichiarato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_richiesta_bonus TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_richiesta_bonus_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status_dich TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_status_storico TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_straniero TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_sussidio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_sussidio_stato_pag TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lav_tiposerv TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.lavoratore TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.log_wsc TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intatt_allegati TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intatt_dett_rata TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_intervento_attore TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pag_stato_procedura TO :userappj WITH GRANT OPTION;
/*

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pag_info_pagamento TO :userappj WITH GRANT OPTION;

*/
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.modulo_pagamento_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.origine_comunicazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.rapporto_lavoro TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.rapporto_lavoro_batch TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.regola_ambito_ricerca TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.registro TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pag_stato_procedura TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.RICHIESTA_PAG_INFO_PAGAMENTO TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_allegati TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.richiesta_pagamento_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_allegati TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_conv_soggetto_promotore TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_convenzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_ddr TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :usersill.seq_dl_disponibilita_intervent TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl_ente TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl_fabbisogni_occupazional TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_dl_sedelav TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_elenco TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_esito_azione_intervento TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_estrazione_sigma TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_fondo TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_assicurazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_attore TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_convenzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_obiettivi TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_proroga_sospens TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_intervento_sede TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_azienda_utilizzatrice TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_azioni_pai TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :usersill.seq_lav_azioni_pai_allegati TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, USAGE
  ON :usersill.seq_lav_detrazioni_dettaglio TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_ente TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_esp_intermediata TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_istituto TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_istituto_eventi TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_istitutocert TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_patto_servizio TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_richiesta_bonus TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lav_sussidio TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_lavoratore TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_modulo_intervento_attore TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_prg_modulo TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_profilo TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_registro TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_richiesta_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_strint_attributo TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_strint_tipo TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_template_azioni_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :usersill.seq_template_pai TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_cancellazione_azienda(incodfiscale varchar, out coderrore integer, out msgerrore varchar) TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_elimina_lavoratore(incodfiscale varchar, out coderrore integer, out msgerrore varchar) TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION :usersill.sp_verifica_elimina_azienda(incodfiscale varchar, out coderrore integer, out msgerrore varchar, out outverificaconvenzione varchar, out outverificatirocinio varchar) TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_attore TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_attributo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_macrostrumento_strum TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo_macrostrumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.strint_tipo_tiposerv TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_esiti_ucs TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_costo TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_pai_esiti TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_azioni_allegati TO :userappj WITH GRANT OPTION;  

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai_misure TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :usersill.template_pai_stato TO :userappj WITH GRANT OPTION;
  
GRANT SELECT
  ON :usersill.tirocinio TO :userappj WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_appl_int TO :userappj WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_dec_dettaglioistituto TO :userappj WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_lav_esperienzestudio TO :userappj WITH GRANT OPTION;

GRANT SELECT
  ON :usersill.v_lav_istituto TO :userappj WITH GRANT OPTION;

GRANT USAGE
  ON SCHEMA :userj TO :userappj;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.ente TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda_altreinfo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_azienda_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_allegati TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_altreinfo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_ente TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_stato TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.iscrizione_persona_tiposerv TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.persona TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_iscrizione_azienda TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_iscrizione_persona TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_soggetto TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON :userj.seq_spc_regola TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.soggetto TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_applicazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_applicazione_profilo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_applicazione_servizio TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_autorizzazione_dati TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_autorizzazione_funzionale TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_dec_gruppo_regola TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_dec_tipo_codifica_regola TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_regola TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento_funzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento_ruolo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.spc_strumento_ruolo_funzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente_applicazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente_applicazione_profilo TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES
  ON :userj.utente_online TO :userappj WITH GRANT OPTION;

GRANT SELECT
  ON :userj.v_iscrizioni TO :userappj WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE jplus_data TO :userappj;

GRANT CREATE
  ON TABLESPACE jplus_idx TO :userappj;

GRANT USAGE
  ON SCHEMA plus_classificazione TO :userappj;

GRANT SELECT, USAGE
  ON plus_classificazione.seq_intermediari TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON plus_classificazione.seq_intermediari_filiali TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albi TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_intermediari TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_albo_sedi TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ampiezza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_areaprofess TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv0 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv1 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv2 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv3 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_atecoliv4 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie181 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_categorie_protette TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_ccnl TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_cittadinanze TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, REFERENCES
  ON plus_classificazione.tab_comune_intermediari TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_comuni TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_condizione_status TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_esperienzelav TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_figuraprofess TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticaconosc TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_informaticagradoconosc TO :userappj WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE,REFERENCES
  ON plus_classificazione.tab_intermediari TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_intermediari_filiali TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingue TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_lingueconoscenza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_listespeciali TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_livcontrattuale TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_modalitalav TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_motivo_permesso TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_nazioni TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_province TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv0 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv1 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv2 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv3 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_qualprofliv4 TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_rapportilavoro TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_regioni TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_sesso TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_status_straniero TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_statusoccupaz TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiolivello TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_studiotitolo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipo_intermediario TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoattestaz TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipoazienda TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipologia_contr TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentiguida TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tab_tipopatentini TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_ateco TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_classificazione.tabella_qualprof TO :userappj WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_data TO :userappj;

GRANT USAGE
  ON SCHEMA plus_dizionari TO :userappj;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenza_elementi TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_area_comp TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.competenze_tipologia_comp TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_allegati TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_competenza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_area_riferimento TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attributi_costo TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_attivita TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_evento_mobilita TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_causa_fine_did TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_certificatori TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_competenze TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_condizione_tirocinio TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_criterio_sosp_cons TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_destinatario TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_dettaglioistituto TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_elementi TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_ente_erogatore TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_azione_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_convocazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_esito_proposta TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_eventi_intervento TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_fascia_eta TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_formato_file TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_grado_elemento_competenza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_lingueconoscenzacef TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_liv_tipo_ammortizzatore TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_mesi TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_misure TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_modalita_convocazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_cessazione_tirocini TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_convocazione TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_motivo_rifiuto_patto TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_natura_cup TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_origine_info TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_periodo_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_profili TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sogg_assicura TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stati_file_profilo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_documento TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_elenco TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_iscrizione_persona TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_lavoratore TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_procedura TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_stato_selezione_dettaglio TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_area TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_strint_macrostrumento TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidi_ente_erogatore TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_sussidio TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_target TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_territorio TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_ambito_criterio TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_attributo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_competenza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_convenzione TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_costo_piano TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_docenza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_elemento TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_evento_mobilita TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_incentivo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_pagamento TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_param_report TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_patto TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_processo_attivita TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_reddito TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_report TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_soggetto TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipo_tirocinio TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipoistituto TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_azione TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_competenza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_fondo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipologia_servizio TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_tipopag_pai TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_verbi TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_voce_costo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.dec_wsc TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.prg_sigma TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.progetti_sigma TO :userappj WITH GRANT OPTION;
  
GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_competenze TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.profilo_comportamenti TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON plus_dizionari.seq_prg_sigma TO :userappj WITH GRANT OPTION;

GRANT SELECT, USAGE
  ON plus_dizionari.seq_progetti_sigma TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambiti_disciplinari TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ambito_territoriale TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_comuni_cap TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_corsotipo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_documenti TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ente_rilascio_doc TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_formagiuridica TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_interventi TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mezzitrasp TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_mobilitageog TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_naturagiuridica TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_obbligoformativo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_questure TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_ripterritoriale TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statocivile TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_statoesperienza TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tipodisabilita TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_tiporecapito TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_trasferte TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tab_unita_tempo TO :userappj WITH GRANT OPTION;

GRANT SELECT, REFERENCES
  ON plus_dizionari.tipo_evento_causa_mobilita TO :userappj WITH GRANT OPTION;

GRANT CREATE
  ON TABLESPACE plus_idx TO :userappj;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer) TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(string varchar, string_to_search varchar, beg_index integer, occur_index integer) TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.instr(varchar, varchar) TO :userappj WITH GRANT OPTION;
  
GRANT EXECUTE
  ON FUNCTION public.months_of(interval) TO :userappj WITH GRANT OPTION;

GRANT EXECUTE
  ON FUNCTION public.months_between(date, date) TO :userappj WITH GRANT OPTION;  
  
--20160302
grant select,insert,update,delete,references on :usersill.utente_info to :userapp with grant option;  
grant select,insert,update,delete,references on :usersill.utente_info to :userappj with grant option;  
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES, TRIGGER, TRUNCATE ON :usersill.utente_info TO :usersill;

grant select,insert,update,delete on :userj.v_titolo_studio to :userapp, :userappj with grant option;
grant select,insert,update,delete on :userj.v_iscrizioni to :userapp, :userappj with grant option;
grant select,insert,update,delete on :userj.v_lav_bilancio to :userapp, :userappj with grant option;
grant select,insert,update,delete on :userj.v_lavoratore_1 to :userapp, :userappj with grant option;
grant select,insert,update,delete on :userj.v_lav_portafoglio_competenze to :userapp, :userappj with grant option;
grant select,insert,update,delete on :userj.v_lavoratori_ammortizza_1 to :userapp, :userappj with grant option;


grant select ,usage on :userj.seq_iscrizione_azienda to :userapp,:userappj with grant option;
grant select ,usage on :userj.seq_iscrizione_persona to :userapp,:userappj with grant option;
grant select ,usage on :userj.seq_soggetto to :userapp,:userappj with grant option;
grant select ,usage on :userj.seq_spc_regola to :userapp,:userappj with grant option;

-- 20170213

GRANT SELECT, REFERENCES, INSERT, UPDATE, DELETE
  ON :usersill.TEMPLATE_AZIONI_COSTO_ATTR TO :userapp,:userappj,:userj WITH GRANT OPTION;
    
GRANT SELECT, REFERENCES, INSERT, UPDATE, DELETE
  ON :usersill.TEMPLATE_AZIONI_MATR_CONS TO :userapp,:userappj,:userj WITH GRANT OPTION;
GRANT SELECT, REFERENCES, INSERT, UPDATE, DELETE
  ON :usersill.TEMPLATE_AZIONI_ATTR_MATRICE TO :userapp,:userappj,:userj WITH GRANT OPTION;
 
GRANT SELECT, REFERENCES, INSERT, UPDATE, DELETE
  ON :usersill.TEMPLATE_AZIONI_PAI_ESPLAV TO :userapp,:userappj,:userj WITH GRANT OPTION;