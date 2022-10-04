\c :dbName :userj





CREATE TABLE ISCRIZIONE_PERSONA_ALTREINFO
(
  IDE_ISCRIZIONE_PERSONA          INTEGER        NOT NULL,
  COD_LIVELLOSTUDIO               VARCHAR(20)     NULL,
  COD_TITOLOSTUDIO                VARCHAR(20)     NULL,
  COD_STATOESPERIENZA             VARCHAR(10)     NULL,
  DTY_ANNO_CONSEGUIMENTO          CHAR(4)      NULL,
  DTM_MESE_CONSEGUIMENTO          CHAR(2)      NULL,
  DES_VOTO_CONSEGUIMENTO          VARCHAR(20)     NULL,
  FLG_CUM_LAUDE                   VARCHAR(1)     NULL,
  DES_TITOLO_TESI                 VARCHAR(250)     NULL,
  DTY_ULTIMO_ANNO_FREQ            CHAR(4)      NULL,
  DTY_ANNO_FREQUENZA              CHAR(4)      NULL,
  DES_MATRICOLA                   VARCHAR(50)     NULL,
  NUM_ESAMI_SOSTENUTI             NUMERIC(2)         NULL,
  NUM_ESAMI_PREVISTI              NUMERIC(2)         NULL,
  NUM_CREDITI_FORMATIVI_MATURATI  NUMERIC(5)         NULL,
  COD_STATUSOCCUPAZ_DICHIARATO    VARCHAR(10)     NULL,
  BIN_CURRICULUM_VITAE            BYTEA              NULL,
  COD_FORMATO_CV                  VARCHAR(10)     NULL,
  DES_ULTERIORI_INFO              VARCHAR(4000)     NULL,
  COD_ISTITUTO                    VARCHAR(18)     NULL,
  DES_TEMPLATE_REPORT             VARCHAR(50)     NULL,
  TXT_TITOLODISTUDIO_ALTREINFO    VARCHAR(250)     NULL,
  COD_USERINS                     VARCHAR(50) NOT NULL,
  DTT_TMSTINS                     TIMESTAMP(6)          NOT NULL,
  COD_USERAGG                     VARCHAR(50)     NULL,
  DTT_TMSTAGG                     TIMESTAMP(6)              NULL  
);




CREATE TABLE SPC_STRUMENTO
(
  COD_STRUMENTO  VARCHAR(40)              NOT NULL,
  DES_NOME       VARCHAR(150)             NOT NULL,
  DES_URL        VARCHAR(500)                 NULL,
  DES_STRUMENTO  VARCHAR(2000)                NULL,
  COD_USERINS    VARCHAR(50)              NOT NULL,
  DTT_TMSTINS    TIMESTAMP(6)                           NOT NULL,
  COD_USERAGG    VARCHAR(50)                  NULL,
  DTT_TMSTAGG    TIMESTAMP(6)                               NULL
);




CREATE TABLE UTENTE_ONLINE
(
  COD_USERID  VARCHAR(50)                 NOT NULL,
  SESSION_ID  VARCHAR(50)                 NOT NULL,
  DTT_LOGIN   TIMESTAMP(6)                              NOT NULL
);




CREATE TABLE SOGGETTO
(
  IDE_SOGGETTO       SERIAL,
  COD_TIPO_SOGGETTO  VARCHAR(1)           NOT NULL,
  COD_USERINS        VARCHAR(50)          NOT NULL,
  DTT_TMSTINS        TIMESTAMP(6)                       NOT NULL,
  COD_USERAGG        VARCHAR(50)              NULL,
  DTT_TMSTAGG        TIMESTAMP(6)                           NULL
);

COMMENT ON COLUMN SOGGETTO.IDE_SOGGETTO IS 'Identifcativo soggetto';

COMMENT ON COLUMN SOGGETTO.COD_TIPO_SOGGETTO IS 'Codice che determina la tipologia del soggetto (persona fisica, soggetto giuridico)';




CREATE TABLE SPC_AUTORIZZAZIONE_FUNZIONALE
(
  COD_APPLICAZIONE     VARCHAR(20)        NOT NULL,
  COD_STRUMENTO        VARCHAR(40)        NOT NULL,
  PRG_ISTANZA          NUMERIC                   NOT NULL,
  COD_FUNZIONE         VARCHAR(40)            NULL,
  COD_RUOLO_STRUMENTO  VARCHAR(30)            NULL,
  COD_UTENTE           VARCHAR(50)            NULL,
  COD_PROFILO          VARCHAR(50)            NULL,
  IDE_REGOLA_BOOLEANA  INTEGER                       NULL,
  COD_SEGNO            CHAR(1)             DEFAULT '+'                   NOT NULL,
  COD_USERINS          VARCHAR(50)        NOT NULL,
  DTT_TMSTINS          TIMESTAMP(6)                     NOT NULL,
  COD_USERAGG          VARCHAR(50)            NULL,
  DTT_TMSTAGG          TIMESTAMP(6)                         NULL
);





CREATE TABLE SPC_APPLICAZIONE
(
  COD_APPLICAZIONE  VARCHAR(20)           NOT NULL,
  DES_APPLICAZIONE  VARCHAR(2000)             NULL,
  TXT_TITOLO        VARCHAR(150)          NOT NULL,
  COD_USERINS       VARCHAR(50)           NOT NULL,
  DTT_TMSTINS       TIMESTAMP(6)                        NOT NULL,
  COD_USERAGG       VARCHAR(50)               NULL,
  DTT_TMSTAGG       TIMESTAMP(6)                            NULL
);






CREATE TABLE SPC_APPLICAZIONE_SERVIZIO
(
  COD_APPLICAZIONE  VARCHAR(20)           NOT NULL,
  COD_STRUMENTO     VARCHAR(40)           NOT NULL,
  PRG_ISTANZA       NUMERIC                      NOT NULL,
  NUM_MAX_ISTANZE   NUMERIC                      DEFAULT 0                     NOT NULL,
  DES_SERVIZIO      VARCHAR(2000)         NOT NULL,
  COD_USERINS       VARCHAR(50)           NOT NULL,
  DTT_TMSTINS       TIMESTAMP(6)                        NOT NULL,
  COD_USERAGG       VARCHAR(50)               NULL,
  DTT_TMSTAGG       TIMESTAMP(6)                            NULL
);




CREATE TABLE SPC_STRUMENTO_FUNZIONE
(
  COD_STRUMENTO         VARCHAR(40)       NOT NULL,
  COD_FUNZIONE          VARCHAR(40)       NOT NULL,
  DES_NOME              VARCHAR(150)      NOT NULL,
  DES_DESCRIZIONE       VARCHAR(2000)     NOT NULL,
  COD_GRUPPO_REGOLA     VARCHAR(10)           NULL,
  FLG_FUNZIONE_RICERCA  CHAR(1)            DEFAULT 'N'                   NOT NULL,
  COD_USERINS           VARCHAR(50)       NOT NULL,
  DTT_TMSTINS           TIMESTAMP(6)                    NOT NULL,
  COD_USERAGG           VARCHAR(50)           NULL,
  DTT_TMSTAGG           TIMESTAMP(6)                        NULL
);




CREATE TABLE ISCRIZIONE_PERSONA_ENTE
(
  IDE_ISCRIZIONE_PERSONA  INTEGER                NOT NULL,
  COD_APPLICAZIONE        VARCHAR(20)     NOT NULL,
  COD_INTERMEDIARIO       VARCHAR(11)     NOT NULL,
  COD_USERINS             VARCHAR(50)     NOT NULL,
  DTT_TMSTINS             TIMESTAMP(6)                  NOT NULL,
  COD_USERAGG             VARCHAR(50)         NULL,
  DTT_TMSTAGG             TIMESTAMP(6)                      NULL
);





CREATE TABLE SPC_APPLICAZIONE_PROFILO
(
  COD_APPLICAZIONE  VARCHAR(20)           NOT NULL,
  COD_PROFILO       VARCHAR(40)           NOT NULL,
  TXT_NOME_PROFILO  VARCHAR(150)          NOT NULL,
  DES_PROFILO       VARCHAR(2000)             NULL,
  COD_USERINS       VARCHAR(50)           NOT NULL,
  DTT_TMSTINS       TIMESTAMP(6)                        NOT NULL,
  COD_USERAGG       VARCHAR(50)               NULL,
  DTT_TMSTAGG       TIMESTAMP(6)                            NULL
);




CREATE TABLE SPC_AUTORIZZAZIONE_DATI
(
  COD_APPLICAZIONE  VARCHAR(20)           NOT NULL,
  COD_STRUMENTO     VARCHAR(40)           NOT NULL,
  PRG_ISTANZA       NUMERIC                      NOT NULL,
  COD_FUNZIONE      VARCHAR(40)           NOT NULL,
  COD_UTENTE        VARCHAR(50)               NULL,
  COD_PROFILO       VARCHAR(50)               NULL,
  IDE_REGOLA_DATI   INTEGER                      NOT NULL,
  COD_USERINS       VARCHAR(50)           NOT NULL,
  DTT_TMSTINS       TIMESTAMP(6)                        NOT NULL,
  COD_USERAGG       VARCHAR(50)               NULL,
  DTT_TMSTAGG       TIMESTAMP(6)                            NULL
);




CREATE TABLE PERSONA
(
  IDE_SOGGETTO            INTEGER                NOT NULL,
  DES_NOME                VARCHAR(50)     NOT NULL,
  DES_COGNOME             VARCHAR(50)     NOT NULL,
  COD_PERSONA             VARCHAR(50)         NULL,
  DAT_NASCITA             DATE                      NULL,
  COD_SESSO               VARCHAR(1)          NULL,
  COD_NAZIONE_NASCITA     VARCHAR(10)         NULL,
  COD_COMUNE_NASCITA      VARCHAR(10)         NULL,
  COD_STATO_CIVILE        VARCHAR(10)         NULL,
  COD_CITTADINANZA        VARCHAR(10)         NULL,
  IDE_ISCRIZIONE_PERSONA  INTEGER                    NULL,
  IDE_LAVORATORE          INTEGER                    NULL,
  IDE_UTENTE_FAD          NUMERIC                    NULL,  
  COD_USERINS             VARCHAR(50)     NOT NULL,
  DTT_TMSTINS             TIMESTAMP(6)                  NOT NULL,
  COD_USERAGG             VARCHAR(50)         NULL,
  DTT_TMSTAGG             TIMESTAMP(6)                      NULL
);

COMMENT ON COLUMN PERSONA.IDE_UTENTE_FAD IS 'Identificativo tabella UTENTI (PLUS_FAD)';




CREATE TABLE ENTE
(
  IDE_DATORE_LAVORO       INTEGER                NOT NULL,
  COD_FISCALE_ENTE        VARCHAR(16)         NULL,
  DES_DENOMINAZIONE_ENTE  VARCHAR(100)        NULL,
  IDE_SOGGETTO            INTEGER                NOT NULL,
  IDE_UTENTE_FAD          INTEGER                   NULL,
  IDE_ISCRIZIONE_AZIENDA  INTEGER                    NULL,
  COD_USERINS             VARCHAR(50)         NULL,
  DTT_TMSTINS             TIMESTAMP(6)                      NULL,
  COD_USERAGG             VARCHAR(50)         NULL,
  DTT_TMSTAGG             TIMESTAMP(6)                      NULL
);




CREATE TABLE SPC_REGOLA
(
  IDE_REGOLA                SERIAL,
  COD_GRUPPO_REGOLA         VARCHAR(10)   NOT NULL,
  DES_NOME                  VARCHAR(150)  NOT NULL,
  DES_DESCRIZIONE           VARCHAR(2000)     NULL,
  COD_TIPO_CODIFICA_REGOLA  VARCHAR(10)   NOT NULL,
  TXT_CODIFICA_REGOLA_SQL   VARCHAR(4000) NOT NULL,
  TXT_CODIFICA_REGOLA_XML   VARCHAR(4000) NOT NULL,
  COD_USERINS               VARCHAR(50)   NOT NULL,
  DTT_TMSTINS               TIMESTAMP(6)                NOT NULL,
  COD_USERAGG               VARCHAR(50)       NULL,
  DTT_TMSTAGG               TIMESTAMP(6)                    NULL
);




CREATE TABLE ISCRIZIONE_AZIENDA_ALTREINFO
(
  IDE_ISCRIZIONE_AZIENDA  INTEGER                NOT NULL,
  NUM_DIP_TEMPO_DET       NUMERIC(6)                 NULL,
  NUM_DIP_TEMPO_INDET     NUMERIC(6)                 NULL,
  TXT_ATTIVITA_AZ         VARCHAR(2500)       NULL,
  TXT_AZ_PARTNERSHIP      VARCHAR(2500)       NULL,
  TXT_SISTEMI_TRASPORTO   VARCHAR(2500)       NULL,
  COD_USERINS             VARCHAR(50)     NOT NULL,
  DTT_TMSTINS             TIMESTAMP(6)                  NOT NULL,
  COD_USERAGG             VARCHAR(50)         NULL,
  DTT_TMSTAGG             TIMESTAMP(6)                      NULL
);





CREATE TABLE ISCRIZIONE_PERSONA_TIPOSERV
(
  IDE_ISCRIZIONE_PERSONA  INTEGER                NOT NULL,
  COD_TIPOLOGIA_SERVIZIO  VARCHAR(20)     NOT NULL,
  COD_USERINS             VARCHAR(50)     NOT NULL,
  DTT_TMSTINS             TIMESTAMP(6)                  NOT NULL
);





CREATE TABLE UTENTE_APPLICAZIONE
(
  COD_USERID        VARCHAR(50)           NOT NULL,
  COD_APPLICAZIONE  VARCHAR(20)           NOT NULL,
  COD_USERINS       VARCHAR(50)           NOT NULL,
  DTT_TMSTINS       TIMESTAMP(6)                        NOT NULL,
  COD_USERAGG       VARCHAR(50)               NULL,
  DTT_TMSTAGG       TIMESTAMP(6)                            NULL
);




CREATE TABLE UTENTE_APPLICAZIONE_PROFILO
(
  COD_USERID        VARCHAR(50)           NOT NULL,
  COD_APPLICAZIONE  VARCHAR(20)           NOT NULL,
  COD_PROFILO       VARCHAR(30)           NOT NULL,
  COD_USERINS       VARCHAR(50)           NOT NULL,
  DTT_TMSTINS       TIMESTAMP(6)                        NOT NULL,
  COD_USERAGG       VARCHAR(50)               NULL,
  DTT_TMSTAGG       TIMESTAMP(6)                            NULL
);




CREATE TABLE UTENTE
(
  COD_USERID               VARCHAR(50)    NOT NULL,
  COD_PASSWORD             VARCHAR(50)        NULL,
  IDE_SOGGETTO             INTEGER               NOT NULL,
  COD_REGIONE              VARCHAR(10)        NULL,
  COD_PROVINCIA            VARCHAR(10)        NULL,
  COD_UNITA_ORGANIZZATIVA  VARCHAR(20)        NULL,  
  COD_USERINS              VARCHAR(50)    NOT NULL,
  DTT_TMSTINS              TIMESTAMP(6)                 NOT NULL,
  COD_USERAGG              VARCHAR(50)        NULL,
  DTT_TMSTAGG              TIMESTAMP(6)                     NULL
);

COMMENT ON COLUMN UTENTE.DTT_TMSTAGG IS 'Contiene la data del'' ultima Login';








CREATE TABLE ISCRIZIONE_AZIENDA
(
  IDE_ISCRIZIONE_AZIENDA      SERIAL,
  DAT_DOMANDA                 DATE              NOT NULL,
  COD_FISCALE_AZIENDA         VARCHAR(16) NOT NULL,
  COD_PARTITA_IVA             VARCHAR(11)     NULL,
  COD_FORMAGIURIDICA          VARCHAR(10)     NULL,
  DES_DENOMINAZIONE_AZIENDA   VARCHAR(100)     NULL,
  DES_COGNOME                 VARCHAR(50)     NULL,
  DES_NOME                    VARCHAR(50)     NULL,
  COD_ATECO                   VARCHAR(10)     NULL,
  COD_INAIL                   VARCHAR(11)     NULL,
  COD_MATRICOLA_INPS          VARCHAR(16)     NULL,
  COD_AMPIEZZA                VARCHAR(10)     NULL,
  DES_SITO_WEB                VARCHAR(250)     NULL,
  COD_CCNL                    VARCHAR(10)     NULL,
  DES_COGNOME_RAPP            VARCHAR(50)     NULL,
  DES_NOME_RAPP               VARCHAR(50)     NULL,
  DAT_NASCITA_RAPP            DATE                  NULL,
  COD_COMUNE_NASC_RAPP        VARCHAR(10)     NULL,
  COD_NAZIONE_NASC_RAPP       VARCHAR(10)     NULL,
  DES_CITTA_EST_NASC_RAPP     VARCHAR(250)     NULL,
  DES_INDIRIZZO_SEDELEG       VARCHAR(100)     NULL,
  COD_COMUNE_SEDELEG          VARCHAR(10)     NULL,
  COD_CAP_SEDELEG             VARCHAR(10)     NULL,
  COD_NAZIONE_ESTERA_SEDELEG  VARCHAR(10)     NULL,
  DES_CITTA_ESTERA_SEDELEG    VARCHAR(250)     NULL,
  DES_TEL_FISSO               VARCHAR(20)     NULL,
  DES_FAX                     VARCHAR(20)     NULL,
  DES_EMAIL                   VARCHAR(50)     NULL,
  COD_USERID                  VARCHAR(50)     NULL,
  COD_PASSWORD                VARCHAR(50)     NULL,
  COD_USERINS                 VARCHAR(50) NOT NULL,
  DTT_TMSTINS                 TIMESTAMP(6)              NOT NULL,
  COD_USERAGG                 VARCHAR(50)     NULL,
  DTT_TMSTAGG                 TIMESTAMP(6)                  NULL
);

COMMENT ON COLUMN ISCRIZIONE_AZIENDA.DES_COGNOME_RAPP IS 'Cognome del rappresentante legale';

COMMENT ON COLUMN ISCRIZIONE_AZIENDA.DES_NOME_RAPP IS 'Nome del rappresentante legale';

COMMENT ON COLUMN ISCRIZIONE_AZIENDA.DAT_NASCITA_RAPP IS 'Data di nascita del rappresentante legale';




CREATE TABLE SPC_DEC_TIPO_CODIFICA_REGOLA
(
  COD_TIPO_CODIFICA_REGOLA  VARCHAR(10)   NOT NULL,
  DES_TIPO_CODIFICA_REGOLA  VARCHAR(255)  NOT NULL
);




CREATE TABLE ISCRIZIONE_PERSONA_ALLEGATI
(
  IDE_ISCRIZIONE_PERSONA  INTEGER                NOT NULL,
  IDE_ALLEGATO            INTEGER               NOT NULL,
  COD_USERINS             VARCHAR(50)     NOT NULL,
  DTT_TMSTINS             TIMESTAMP(6)                  NOT NULL,
  COD_USERAGG             VARCHAR(50)         NULL,
  DTT_TMSTAGG             TIMESTAMP(6)                      NULL
);

COMMENT ON COLUMN ISCRIZIONE_PERSONA_ALLEGATI.COD_USERINS IS 'Codice dell''utente che ha effettuato l''inserimento del dato';

COMMENT ON COLUMN ISCRIZIONE_PERSONA_ALLEGATI.DTT_TMSTINS IS 'TIMESTAMP in cui e stato effettuato l''inserimento del dato';

COMMENT ON COLUMN ISCRIZIONE_PERSONA_ALLEGATI.COD_USERAGG IS 'Codice dell''utente che ha effettuato l''ultimo aggiornamento del dato';

COMMENT ON COLUMN ISCRIZIONE_PERSONA_ALLEGATI.DTT_TMSTAGG IS 'TIMESTAMP in cui e stato effettuato l''ultimo aggiornamento del dato';





CREATE TABLE ISCRIZIONE_PERSONA_STATO
(
  IDE_ISCRIZIONE_PERSONA  INTEGER                NOT NULL,
  COD_STATO_ISCRIZIONE    VARCHAR(10)     NOT NULL,
  TXT_NOTE                VARCHAR(2500)       NULL,
  DTT_INI                 TIMESTAMP(6)                  NOT NULL,
  DTT_FIN                 TIMESTAMP(6)                      NULL
);




CREATE TABLE SPC_STRUMENTO_RUOLO
(
  COD_STRUMENTO        VARCHAR(40)        NOT NULL,
  COD_RUOLO_STRUMENTO  VARCHAR(30)        NOT NULL,
  DES_NOME             VARCHAR(150)       NOT NULL,
  DES_DESCRIZIONE      VARCHAR(2000)      NOT NULL,
  COD_USERINS          VARCHAR(50)        NOT NULL,
  DTT_TMSTINS          TIMESTAMP(6)                     NOT NULL,
  COD_USERAGG          VARCHAR(50)            NULL,
  DTT_TMSTAGG          TIMESTAMP(6)                         NULL
);





CREATE TABLE SPC_STRUMENTO_RUOLO_FUNZIONE
(
  COD_STRUMENTO        VARCHAR(40)        NOT NULL,
  COD_RUOLO_STRUMENTO  VARCHAR(30)        NOT NULL,
  COD_FUNZIONE         VARCHAR(40)        NOT NULL,
  COD_USERINS          VARCHAR(50)        NOT NULL,
  DTT_TMSTINS          DATE                     NOT NULL,
  COD_USERAGG          VARCHAR(50)            NULL,
  DTT_TMSTAGG          DATE                         NULL
);




CREATE TABLE SPC_DEC_GRUPPO_REGOLA
(
  COD_GRUPPO_REGOLA  VARCHAR(10)          NOT NULL,
  DES_GRUPPO_REGOLA  VARCHAR(255)         NOT NULL
);





CREATE TABLE ISCRIZIONE_AZIENDA_STATO
(
  IDE_ISCRIZIONE_AZIENDA  INTEGER                NOT NULL,
  COD_STATO               VARCHAR(10)     NOT NULL,
  TXT_NOTE                VARCHAR(100)        NULL,  
  DTT_INI                 DATE                  NOT NULL,
  DTT_FIN                 DATE                      NULL
);





CREATE TABLE ISCRIZIONE_PERSONA
(
  IDE_ISCRIZIONE_PERSONA   SERIAL,
  DES_NOME                 VARCHAR(50)        NULL,
  DES_COGNOME              VARCHAR(50)        NULL,
  COD_PERSONA              VARCHAR(50)        NULL,
  DAT_NASCITA              DATE                     NULL,
  COD_SESSO                VARCHAR(1)         NULL,
  COD_NAZIONE_NASCITA      VARCHAR(10)        NULL,
  COD_COMUNE_NASCITA       VARCHAR(10)        NULL,
  COD_STATO_CIVILE         VARCHAR(10)        NULL,
  COD_CITTADINANZA         VARCHAR(10)        NULL,
  COD_COMUNE_DOMICILIO     VARCHAR(10)        NULL,
  DES_INDIRIZZO_DOMICILIO  VARCHAR(100)       NULL,
  DES_LOCALITA_DOMICILIO   VARCHAR(100)       NULL,
  DES_PRESSO_DOMICILIO     VARCHAR(100)       NULL,
  COD_CAP_DOMICILIO        VARCHAR(10)        NULL,
  COD_COMUNE_RESIDENZA     VARCHAR(10)        NULL,
  DES_INDIRIZZO_RESIDENZA  VARCHAR(100)       NULL,
  DES_LOCALITA_RESIDENZA   VARCHAR(100)       NULL,
  DES_PRESSO_RESIDENZA     VARCHAR(100)       NULL,
  COD_CAP_RESIDENZA        VARCHAR(10)        NULL,
  DES_EMAIL                VARCHAR(50)        NULL,
  DES_CELLULARE            VARCHAR(20)        NULL,
  DES_TEL_FISSO            VARCHAR(20)        NULL,
  DAT_DOMANDA              DATE                     NULL,
  COD_USERID               VARCHAR(50)        NULL,
  COD_PASSWORD             VARCHAR(50)        NULL,
  COD_APPLICAZIONE         VARCHAR(20)        NULL,  
  COD_USERINS              VARCHAR(50)    NOT NULL,
  DTT_TMSTINS              TIMESTAMP(6)                 NOT NULL,
  COD_USERAGG              VARCHAR(50)        NULL,
  DTT_TMSTAGG              TIMESTAMP(6)                     NULL
);
-------------------------------------

