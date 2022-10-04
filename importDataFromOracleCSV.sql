--\i 'importDataFromOracleCSV.sql';
\echo 'importDataFromOracleCSV.sql'
\ir 'setVariables.sql';
\o 'importDataFromOracleCSV.log'
\c :dbName plus_classificazione
\echo 'Import tabelle schema classificazione...';
\set claProgettoImportScript IMPORT/ :PROGETTO /CLA/import.sql
\ir :claProgettoImportScript;

-------------------------------------------------------------


\c :dbName :userprof
\echo 'Import tabelle schema profiler...';
\set profilerProgettoImportScript IMPORT/ :PROGETTO /PROFILER/import.sql
\ir :profilerProgettoImportScript;

\echo 'Allineamento sequence per tabelle schema profiler...';
SELECT setval('seq_appl_int', (select MAX(ide_appl_int) FROM appl_int));
SELECT setval('seq_sil', (select MAX(ide_regola) FROM regola));
SELECT setval('seq_soggetto_profilo_applicazi', (select MAX(IDE_SOGG_PROF_APP) FROM soggetto_profilo_applicazione));
-------------------------------------------------------------


\c :dbName plus_dizionari
\echo 'Import tabelle schema dizionari...';
\set dizProgettoImportScript IMPORT/ :PROGETTO /DIZ/import.sql
\ir :dizProgettoImportScript;

-------------------------------------------------------------



\c :dbName :usersill
\echo 'Import tabelle schema sill...';
\set sillProgettoImportScript IMPORT/ :PROGETTO /SILL/import.sql
\ir :sillProgettoImportScript;

\echo 'Allineamento sequence per tabelle schema sill...';
SELECT setval('seq_lav_istituto', (select MAX(ide_lav_istituto) FROM lav_istituto));
SELECT setval('seq_lav_istitutocert', (select MAX(ide_lav_istitutocert) FROM lav_istitutocert));
SELECT setval('seq_lav_istituto_eventi', (select MAX(ide_lav_istituto_eventi) FROM lav_istituto_eventi));
SELECT setval('seq_lav_patto_servizio', (select MAX(ide_patto_servizio) FROM lav_patto_servizio));
SELECT setval('seq_lav_richiesta_bonus', (select MAX(ide_richiesta_bonus) FROM lav_richiesta_bonus));
SELECT setval('seq_lav_sussidio', (select MAX(ide_lav_sussidio) FROM lav_sussidio));
SELECT setval('seq_template_azioni_pai', (select MAX(ide_template_azione_pai) FROM template_azioni_pai));
SELECT setval('seq_template_pai', (select MAX(ide_template_pai) FROM template_pai));
SELECT setval('seq_intervento_proroga_sospens', (select MAX(prg_prog_sosp) FROM intervento_proroga_sospensione));
SELECT setval('seq_intervento_sede', (select MAX(prg_sede) FROM intervento_sede));
SELECT setval('seq_lavoratore', (select MAX(ide_lavoratore) FROM lavoratore));
SELECT setval('seq_lav_azienda_utilizzatrice', (select MAX(ide_azienda_utilizzatrice) FROM lav_azienda_utilizzatrice));
SELECT setval('seq_lav_azioni_pai', (select MAX(ide_azione_pai) FROM lav_azioni_pai));
SELECT setval('seq_lav_detrazioni_dettaglio', (select MAX(ide_detrazioni_dettaglio) FROM lav_detrazioni_dettaglio));
SELECT setval('seq_lav_ente', (select MAX(ide_lav_ente) FROM lav_ente));
SELECT setval('seq_lav_esp_intermediata', (select MAX(ide_esperienza_interm) FROM lav_esperienza_intermediata));
SELECT setval('seq_convenzione', (select MAX(prg_convenzione) FROM convenzione));
SELECT setval('seq_conv_soggetto_promotore', (select MAX(ide_soggetto_promotore) FROM conv_soggetto_promotore));
SELECT setval('seq_dl', (select MAX(ide_datore_lavoro) FROM datore_lavoro));
SELECT setval('seq_dl_disponibilita_intervent', (select MAX(ide_disponibilita_interventi) FROM dl_disponibilita_interventi));
SELECT setval('seq_dl_ente', (select MAX(ide_dl_ente) FROM dl_ente));
SELECT setval('seq_dl_fabbisogni_occupazional', (select MAX(ide_fabb_occupazionali) FROM dl_fabbisogni_occupazionali));
SELECT setval('seq_elenco', (select MAX(ide_elenco) FROM elenco));
SELECT setval('seq_esito_azione_intervento', (select MAX(ide_esito_azione_intervento) FROM esito_azione_intervento));
SELECT setval('seq_fondo', (select MAX(ide_fondo) FROM fondo));
SELECT setval('seq_intervento', (select MAX(ide_intervento) FROM intervento));
SELECT setval('seq_intervento_assicurazione', (select MAX(prg_assicurazione) FROM intervento_assicurazione));
SELECT setval('seq_intervento_attore', (select MAX(prg_intervento_attore) FROM intervento_attore));
SELECT setval('seq_allegati', (select MAX(ide_allegato) FROM allegati));
SELECT setval('seq_pai', (select MAX(ide_pai) FROM lav_pai));
SELECT setval('seq_registro', (select MAX(ide_registro) FROM registro));
SELECT setval('seq_strint_attributo', (select MAX(ide_intervento_attributo) FROM intervento_attributo));
SELECT setval('seq_strint_tipo', (select MAX(ide_tipo_intervento) FROM strint_tipo));
SELECT setval('seq_intervento_obiettivi', (select MAX(prg_intervento_obiettivo) FROM intervento_obiettivi));
SELECT setval('seq_richiesta_pagamento', (
		SELECT MAX(ide)
		FROM (
			SELECT ide_richiesta_pagamento ide FROM richiesta_pagamento
			UNION ALL
			SELECT ide_modulo_pagamento ide FROM modulo_pagamento
		) unione
	)
);

-------------------------------------------------------------


\c :dbName :userj
\echo 'Import tabelle schema j...';
\set jProgettoImportScript IMPORT/ :PROGETTO /J/import.sql
\ir :jProgettoImportScript;


\echo 'Allineamento sequence per tabelle schema j...';
SELECT setval('seq_iscrizione_persona', (select MAX(ide_iscrizione_persona) FROM iscrizione_persona));
SELECT setval('seq_soggetto', (select MAX(ide_soggetto) FROM soggetto));
SELECT setval('seq_spc_regola', (select MAX(ide_regola) FROM spc_regola));
SELECT setval('seq_iscrizione_azienda', (select MAX(ide_iscrizione_azienda) FROM iscrizione_azienda));









-- SEQUENCE NON TROVATE:
--		seq_profilo
--		seq_dl_sedelav
--		seq_prg_modulo