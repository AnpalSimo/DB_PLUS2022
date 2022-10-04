
\echo 'executing script 503_ddl.create.sequence.Sill.sql';

\c :dbName :usersill



CREATE SEQUENCE seq_allegati
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_carrello_sap; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_carrello_sap
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999999999
    CACHE 20
    CYCLE;



--
-- Name: seq_conv_soggetto_promotore; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_conv_soggetto_promotore
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_convenzione; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_convenzione
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_ddr; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_ddr
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 922337203
    CACHE 1
    CYCLE;



--
-- Name: seq_dl; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_dl
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_dl_disponibilita_intervent; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_dl_disponibilita_intervent
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_dl_ente; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_dl_ente
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_dl_fabbisogni_occupazional; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_dl_fabbisogni_occupazional
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_dl_sedelav; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_dl_sedelav
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_elenco; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_elenco
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_esito_azione_intervento; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_esito_azione_intervento
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_estrazione_sigma; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_estrazione_sigma
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999999
    CACHE 1;



--
-- Name: seq_flusso_sap; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_flusso_sap
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999999999
    CACHE 20
    CYCLE;



--
-- Name: seq_fondo; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_fondo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_intervento; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_intervento
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_intervento_assicurazione; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_intervento_assicurazione
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_intervento_attore; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_intervento_attore
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_intervento_convenzione; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_intervento_convenzione
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_intervento_obiettivi; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_intervento_obiettivi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_intervento_proroga_sospens; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_intervento_proroga_sospens
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_intervento_sede; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_intervento_sede
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_lav_azienda_utilizzatrice; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_azienda_utilizzatrice
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_lav_azioni_pai; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_azioni_pai
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_lav_azioni_pai_allegati; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_azioni_pai_allegati
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 20;



--
-- Name: seq_lav_detrazioni_dettaglio; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_detrazioni_dettaglio
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_lav_ente; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_ente
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_lav_esp_intermediata; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_esp_intermediata
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_lav_istituto; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_istituto
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 20;



--
-- Name: seq_lav_istituto_eventi; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_istituto_eventi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 20;



--
-- Name: seq_lav_istitutocert; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_istitutocert
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 20;



--
-- Name: seq_lav_patto_servizio; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_patto_servizio
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_lav_richiesta_bonus; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_richiesta_bonus
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_lav_sussidio; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lav_sussidio
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 20;



--
-- Name: seq_lavoratore; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_lavoratore
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_log_servizio; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_log_servizio
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999999999
    CACHE 20;



--
-- Name: seq_modulo_intervento_attore; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_modulo_intervento_attore
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_pai; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_pai
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_prg_modulo; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_prg_modulo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_profilo; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_profilo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_registro; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_registro
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_richiesta_cup; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_richiesta_cup
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999999999
    CACHE 20;



--
-- Name: seq_richiesta_pagamento; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_richiesta_pagamento
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_richiesta_sap; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_richiesta_sap
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999999999999
    CACHE 20
    CYCLE;



--
-- Name: seq_strint_attributo; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_strint_attributo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_strint_tipo; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_strint_tipo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20;



--
-- Name: seq_template_azioni_pai; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_template_azioni_pai
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;



--
-- Name: seq_template_pai; Type: SEQUENCE; Schema: puoi_sill; Owner: puoi_sill
--

CREATE SEQUENCE seq_template_pai
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 20
    CYCLE;


