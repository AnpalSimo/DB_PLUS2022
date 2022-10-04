
\echo 'executing script 40_Tabelle_Diz.sql';

\c :dbName plus_dizionari;


CREATE TABLE DEC_TIPO_REPORT
(
  COD_TIPO_REPORT  VARCHAR(10)            NOT NULL,
  DES_TIPO_REPORT  VARCHAR(250)           NOT NULL
);



CREATE TABLE DEC_TIPO_PARAM_REPORT
(
  COD_TIPO_PARAM_REPORT  VARCHAR(10)      NOT NULL,
  DES_TIPO_PARAM_REPORT  VARCHAR(250)     NOT NULL
);


CREATE TABLE PRG_SIGMA
(
	IDE_PRG_SIGMA          NUMERIC NOT NULL ,
	COD_ANAGRAFE           NUMERIC NOT NULL ,
	COD_TIPOGIUSTIFICATIVO NUMERIC NOT NULL ,
	COD_PROGETTO_SIGMA     NUMERIC NOT NULL ,
	COD_PIANO_FINANZ_L1    NUMERIC NOT NULL ,
	COD_PIANO_FINANZ_L2    NUMERIC NULL ,
	COD_PROGETTO_PLUS      VARCHAR(2) NOT NULL ,
	COD_PREFISSO_PLUS      VARCHAR(2) NOT NULL ,	
	COD_USERINS            VARCHAR(40) NOT NULL ,
	DTT_TMSTINS            TIMESTAMP(6) NOT NULL ,
	COD_USERAGG            VARCHAR(40) NULL ,
	DTT_TMSTAGG            TIMESTAMP(6) NULL 
);


 
CREATE TABLE TAB_MOBILITAGEOG
(
  COD_MOBILITAGEOG  VARCHAR(10),
  DES_MOBILITAGEOG  VARCHAR(200) NOT NULL,
  DAT_INIZIO        DATE NOT NULL,
  DAT_FINE          DATE,
  DTT_TMST            TIMESTAMP(6)  NOT NULL
);




CREATE TABLE TAB_AMBITI_DISCIPLINARI
(
  COD_AMBITO_DISCIPLINARE  VARCHAR(10),
  DES_AMBITO_DISCIPLINARE  VARCHAR(200),
  DAT_INIZIO               DATE  NOT NULL,
  DAT_FINE                 DATE,
  DTT_TMST            TIMESTAMP(6) NOT NULL
);




CREATE TABLE DEC_TIPO_INCENTIVO
(
  COD_TIPO_INCENTIVO  VARCHAR(3),
  DES_TIPO_INCENTIVO  VARCHAR(100),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)
);

COMMENT ON TABLE DEC_TIPO_INCENTIVO IS 'Tabella di decodifica delle tipologie di incentivo previste';

COMMENT ON COLUMN DEC_TIPO_INCENTIVO.COD_TIPO_INCENTIVO IS 'Codice tipologia incentivo. Sono previsti i seguenti valori:
ANP = Anticipo Pianoi Personalizzato
TUT= Richiesta pagamento Tutor
TIR = Borsa di studio tirocinante';




CREATE TABLE DEC_STRINT_MACROSTRUMENTO
(
  COD_MACROSTRUMENTO  VARCHAR(10),
  DES_MACROSTRUMENTO  VARCHAR(250),
  TXT_MACROSTRUMENTO  VARCHAR(250),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_COSTO_PIANO
(
  COD_TIPO_COSTO_PIANO  VARCHAR(3),
  DES_TIPO_COSTO_PIANO  VARCHAR(100),
  DAT_INIZIO            DATE,
  DAT_FINE              DATE,
  DTT_TMST              TIMESTAMP(6)
);

COMMENT ON TABLE DEC_TIPO_COSTO_PIANO IS 'Contiene le tipologie di calcolo del costo di un Piano previste dall''applicazione.
E'' possibile avere le seguenti tipologie:
- Piano che non prevede costi
- Piano il cui costo e dato dalla somma dei costi delle singole azioni
- Piano il cui costo e indicato nel campo Importo e non suddiviso per singole azioni';

COMMENT ON COLUMN DEC_TIPO_COSTO_PIANO.COD_TIPO_COSTO_PIANO IS 'Codice tipo costo piano. puo assumere i seguenti valori:
PSC = Piano senza costi
CTA = Costo totale azioni
CTP = Costo totale Piano';

COMMENT ON COLUMN DEC_TIPO_COSTO_PIANO.DES_TIPO_COSTO_PIANO IS 'Descrizione tipo costo Piano';

COMMENT ON COLUMN DEC_TIPO_COSTO_PIANO.DAT_INIZIO IS 'Inizio validita codice';

COMMENT ON COLUMN DEC_TIPO_COSTO_PIANO.DAT_FINE IS 'Fine validita codice';

COMMENT ON COLUMN DEC_TIPO_COSTO_PIANO.DTT_TMST IS 'Data ultimo aggiornamento';




CREATE TABLE DEC_COMPETENZE
(
  COD_COMPETENZA  NUMERIC(6),
  DES_COMPETENZA  VARCHAR(180),
  COD_VERBO       NUMERIC(6),
  TXT_COMPETENZA  VARCHAR(2000),
  DAT_INIZIO      DATE,
  DAT_FINE        DATE,
  DTT_TMST        TIMESTAMP(6)
);




CREATE TABLE PROFILO_COMPETENZE
(
  COD_PROFILO          NUMERIC(6),
  COD_COMPETENZA       NUMERIC(6),
  COD_TIPO_COMPETENZA  NUMERIC(2),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);




CREATE TABLE DEC_ELEMENTI
(
  COD_ELEMENTO       NUMERIC(6),
  DES_ELEMENTO       VARCHAR(80),
  TXT_ELEMENTO       VARCHAR(2000),
  COD_AREA_RIF       NUMERIC(6),
  COD_TIPO_ELEMENTO  NUMERIC(2),
  DAT_INIZIO         DATE,
  DAT_FINE           DATE,
  DTT_TMST           TIMESTAMP(6)
);




CREATE TABLE DEC_MOTIVO_CONVOCAZIONE
(
  COD_APPLICAZIONE         VARCHAR(20),
  COD_MOTIVO_CONVOCAZIONE  VARCHAR(10),
  DES_MOTIVO_CONVOCAZIONE  VARCHAR(250),
  DAT_INIZIO               DATE,
  DAT_FINE                 DATE,
  DTT_TMST                 TIMESTAMP(6)
);

CREATE TABLE TAB_AMBITO_TERRITORIALE
(
  COD_AMBITO_TERRITORIALE  VARCHAR(10)    NOT NULL,
  DES_AMBITO_TERRITORIALE  VARCHAR(200)   NOT NULL,
  DAT_INIZIO               DATE                 NOT NULL,
  DAT_FINE                 DATE,
  DTT_TMST                 TIMESTAMP(6)                 NOT NULL
);


CREATE TABLE TAB_NATURAGIURIDICA
(
  COD_NATURAGIURIDICA  VARCHAR(2)         NOT NULL,
  COD_RESIDENZA        VARCHAR(40)        NOT NULL,
  DES_NATURAGIURIDICA  VARCHAR(200)       NOT NULL,
  DAT_INIZIO           DATE                     NOT NULL,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)                     NOT NULL
);


CREATE TABLE TAB_TRASFERTE
(
  COD_TRASFERTE  VARCHAR(10)              NOT NULL,
  DES_TRASFERTE  VARCHAR(200)             NOT NULL,
  DAT_INIZIO     DATE                           NOT NULL,
  DAT_FINE       DATE,
  DTT_TMST       TIMESTAMP(6)                           NOT NULL
);


CREATE TABLE DEC_MOTIVO_RIFIUTO_PATTO
(
  COD_MOTIVO_RIFIUTO_PATTO  VARCHAR(10)   NOT NULL,
  DES_MOTIVO_RIFIUTO_PATTO  VARCHAR(250),
  DAT_INIZIO                DATE                NOT NULL,
  DAT_FINE                  DATE,
  DTT_TMST                  TIMESTAMP(6)
);



CREATE TABLE DEC_STATI_FILE_PROFILO
(
  COD_STATO_FILE_PROFILO  VARCHAR(10)     NOT NULL,
  DES_STATO_FILE_PROFILO  VARCHAR(50)     NOT NULL,
  DAT_INIZIO              DATE                  NOT NULL,
  DAT_FINE                DATE,
  DTT_TMST                TIMESTAMP(6)                  NOT NULL
);



CREATE TABLE DEC_TARGET
(
  COD_APPLICAZIONE  VARCHAR(20)           NOT NULL,
  COD_TARGET        VARCHAR(10)           NOT NULL,
  DES_TARGET        VARCHAR(250),
  DAT_INIZIO        DATE                        NOT NULL,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);



CREATE TABLE DEC_TIPO_PROCESSO_ATTIVITA
(
  COD_PROCESSO_ATTIVITA       NUMERIC(2)         NOT NULL,
  DES_TIPO_PROCESSO_ATTIVITA  VARCHAR(60),
  DAT_INIZIO                  DATE              NOT NULL,
  DAT_FINE                    DATE,
  DTT_TMST                    TIMESTAMP(6)              NOT NULL
);



CREATE TABLE DEC_TIPO_REDDITO
(
  COD_TIPO_REDDITO  VARCHAR(10)           NOT NULL,
  DES_REDDITO       VARCHAR(100)          NOT NULL,
  DAT_INIZIO        DATE                        NOT NULL,
  DAT_FINE          DATE
);






CREATE TABLE DEC_STRINT_AREA
(
  COD_AREA_INTERVENTO  VARCHAR(10),
  DTT_TMST             TIMESTAMP(6),
  DES_AREA_INTERVENTO  VARCHAR(250),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE
);




CREATE TABLE TAB_TIPODISABILITA
(
  COD_TIPODISABILITA  VARCHAR(10),
  DES_TIPODISABILITA  VARCHAR(200),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)
);




CREATE TABLE TIPO_EVENTO_CAUSA_MOBILITA
(
  COD_CAUSA_EVENTO     VARCHAR(10),
  COD_EVENTO_MOBILITA  VARCHAR(10),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);



CREATE TABLE DEC_EVENTI_INTERVENTO
(
  COD_EVENTO  VARCHAR(40),
  DES_EVENTO  VARCHAR(250),
  DAT_INIZIO  DATE,
  DAT_FINE    DATE,
  DTT_TMST    TIMESTAMP(6)
);





CREATE TABLE TAB_TIPORECAPITO
(
  COD_TIPORECAPITO  VARCHAR(10),
  DES_TIPORECAPITO  VARCHAR(200),
  DAT_INIZIO        DATE,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);




CREATE TABLE TAB_COMUNI_CAP
(
  COD_COMUNE  VARCHAR(10),
  COD_CAP     VARCHAR(10),
  DAT_INIZIO  DATE NOT NULL,
  DAT_FINE    DATE,
  DTT_TMST    TIMESTAMP(6) NOT NULL
);




CREATE TABLE DEC_CERTIFICATORI
(
  COD_CERTIFICATORI  VARCHAR(10),
  DES_CERTIFICATORI  VARCHAR(200),
  DAT_INIZIO         DATE,
  DAT_FINE           DATE,
  DTT_TMST           TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_PATTO
(
  COD_APPLICAZIONE  VARCHAR(20),
  COD_TIPO_PATTO    VARCHAR(10),
  DES_TIPO_PATTO    VARCHAR(250),
  DAT_INIZIO        DATE,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);




CREATE TABLE DEC_CAUSA_FINE_DID
(
  COD_CAUSA_FINE_DID  VARCHAR(10),
  DES_CAUSA_FINE_DID  VARCHAR(250),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)
);






CREATE TABLE DEC_CONDIZIONE_TIROCINIO
(
  COD_APPLICAZIONE          VARCHAR(20),
  COD_CONDIZIONE_TIROCINIO  VARCHAR(10),
  DES_CONDIZIONE_TIROCINIO  VARCHAR(300),
  DAT_INIZIO                DATE,
  DAT_FINE                  DATE,
  DTT_TMST                  TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_CONVENZIONE
(
  COD_APPLICAZIONE      VARCHAR(20),
  COD_TIPO_CONVENZIONE  VARCHAR(10),
  DES_TIPO_CONVENZIONE  VARCHAR(250),
  DAT_INIZIO            DATE,
  DAT_FINE              DATE,
  DTT_TMST              TIMESTAMP(6)
);




CREATE TABLE DEC_DETTAGLIOISTITUTO
(
  COD_DETTAGLIOISTITUTO  VARCHAR(10),
  DES_DETTAGLIOISTITUTO  VARCHAR(200),
  COD_TIPOISTITUTO       VARCHAR(10),
  COD_TIPO_SUSSIDIO      VARCHAR(10),
  DAT_INIZIO             DATE,
  DAT_FINE               DATE,
  DTT_TMST               TIMESTAMP(6)
);




CREATE TABLE TAB_DOCUMENTI
(
  COD_DOCUMENTO  VARCHAR(10),
  DES_DOCUMENTO  VARCHAR(200),
  DAT_INIZIO     DATE NOT NULL,
  DAT_FINE       DATE,
  DTT_TMST       TIMESTAMP(6) NOT NULL
);







CREATE TABLE DEC_STATO_PROCEDURA
(
  COD_STATO_PROCEDURA  VARCHAR(3),
  DES_STATO_PROCEDURA  VARCHAR(250),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);




CREATE TABLE DEC_TIPOLOGIA_AZIONE
(
  COD_APPLICAZIONE        VARCHAR(20),
  COD_TIPOLOGIA_AZIONE    VARCHAR(20),
  DES_TIPOLOGIA_AZIONE    VARCHAR(250),
  COD_TIPO_AZIONE_PADRE   VARCHAR(20),
  TIPO_LIVELLO            INTEGER,
  COD_ATTIVITA            VARCHAR(5),
  DES_MISURA_ATTIVITA_YEI VARCHAR(250),
  DAT_INIZIO              DATE,
  DAT_FINE                DATE,
  DTT_TMST                TIMESTAMP(6)
);

COMMENT ON TABLE DEC_TIPOLOGIA_AZIONE IS 'Tabella con le tipologia di azioni';

COMMENT ON COLUMN DEC_TIPOLOGIA_AZIONE.COD_TIPOLOGIA_AZIONE IS 'Numero progressivo della tabella';

COMMENT ON COLUMN DEC_TIPOLOGIA_AZIONE.DES_TIPOLOGIA_AZIONE IS 'Nome della tipologia d''azione';

COMMENT ON COLUMN DEC_TIPOLOGIA_AZIONE.COD_TIPO_AZIONE_PADRE IS 'Numero di riferimento a IDE_TIPOLOGIA_AZIONE per identificare il padre della tipologia d''azione';

COMMENT ON COLUMN DEC_TIPOLOGIA_AZIONE.TIPO_LIVELLO IS 'Numero identificativo del livello della tipologia d''azione';

COMMENT ON COLUMN DEC_TIPOLOGIA_AZIONE.DTT_TMST IS 'Data ultimo aggiornamento';




CREATE TABLE DEC_CAUSA_EVENTO_MOBILITA
(
  COD_CAUSA_EVENTO  VARCHAR(10),
  DES_CAUSA_EVENTO  VARCHAR(250),
  DAT_INIZIO        DATE,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);




CREATE TABLE DEC_WSC
(
  COD_APPLICAZIONE  VARCHAR(20),
  COD_WSC           VARCHAR(10),
  DES_WSC           VARCHAR(250),
  DES_FONTE_WSC     VARCHAR(250),
  DAT_INIZIO        DATE,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);




CREATE TABLE DEC_DESTINATARIO
(
  COD_DESTINATARIO  VARCHAR(10),
  DES_DESTINATARIO  VARCHAR(250),
  DAT_INIZIO        DATE,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);

COMMENT ON COLUMN DEC_DESTINATARIO.DES_DESTINATARIO IS 'Persona
Azienda
Ente/altro';






CREATE TABLE DEC_TERRITORIO
(
  COD_COMUNE              VARCHAR(10),
  DES_COMUNE              VARCHAR(200),
  COD_PROVINCIA           VARCHAR(10),
  DES_PROVINCIA           VARCHAR(200),
  COD_REGIONE             VARCHAR(10),
  DES_REGIONE             VARCHAR(200),
  COD_INTERMEDIARIO       VARCHAR(11),
  DES_INTERMEDIARIO       VARCHAR(200),
  COD_TIPO_INTERMEDIARIO  VARCHAR(20),
  DES_TIPO_INTERMEDIARIO  VARCHAR(200),
  DES_OB_UNO_TRE          VARCHAR(50),
  DES_OB_CONV_CRO         VARCHAR(50)
);




CREATE TABLE DEC_ESITO_CONVOCAZIONE
(
  COD_ESITO_CONVOCAZIONE  VARCHAR(10),
  DES_ESITO_CONVOCAZIONE  VARCHAR(250),
  DAT_INIZIO              DATE,
  DAT_FINE                DATE,
  DTT_TMST                TIMESTAMP(6)
);




CREATE TABLE DEC_PROFILI
(
  COD_PROFILO             NUMERIC(6),
  COD_CATEGORIAPROFESS    VARCHAR(10),
  COD_AREAPROFESS         VARCHAR(10),
  DES_PROFILO             VARCHAR(60),
  TXT_FINALITA            VARCHAR(2000),
  TXT_PREREQUISITI        VARCHAR(2000),
  TXT_TENDENZE_EVOLUTIVE  VARCHAR(2000),
  COD_FIGURAPROFESS       VARCHAR(12),
  DAT_INIZIO              DATE,
  DAT_FINE                DATE,
  DTT_TMST                TIMESTAMP(6)
);




CREATE TABLE TAB_STATOCIVILE
(
  COD_STATOCIVILE  VARCHAR(10),
  DES_STATOCIVILE  VARCHAR(20),
  DAT_INIZIO       DATE,
  DAT_FINE         DATE,
  DTT_TMST         TIMESTAMP(6)
);




CREATE TABLE COMPETENZE_TIPOLOGIA_COMP
(
  COD_COMPETENZA            NUMERIC(6),
  COD_TIPOLOGIA_COMPETENZA  NUMERIC,
  DAT_INIZIO                DATE,
  DAT_FINE                  CHAR(18),
  DTT_TMST                  TIMESTAMP(6),
  COD_USERAGG               VARCHAR(40)
);




CREATE TABLE DEC_SUSSIDIO
(
  COD_APPLICAZIONE   VARCHAR(50),
  COD_TIPO_SUSSIDIO  VARCHAR(10),
  DES_TIPO_SUSSIDIO  VARCHAR(200),
  DAT_INIZIO         DATE,
  DAT_FINE           DATE
);




CREATE TABLE TAB_STATOESPERIENZA
(
  COD_STATOESPERIENZA  VARCHAR(10),
  DES_STATOESPERIENZA  VARCHAR(200),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_EVENTO_MOBILITA
(
  COD_TIPO_EVENTO_MOBILITA  VARCHAR(10),
  DES_TIPO_EVENTO_MOBILITA  VARCHAR(250),
  DAT_INIZIO                DATE,
  DAT_FINE                  DATE,
  DTT_TMST                  TIMESTAMP(6)
);




CREATE TABLE TAB_FORMAGIURIDICA
(
  COD_FORMAGIURIDICA  VARCHAR(10),
  DES_FORMAGIURIDICA  VARCHAR(200),
  PARENT              VARCHAR(50),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)  
);




CREATE TABLE DEC_AREA_RIFERIMENTO
(
  COD_AREA_RIF  NUMERIC(6),
  DES_AREA_RIF  VARCHAR(80),
  TXT_NOTA      VARCHAR(2000),
  DAT_INIZIO    DATE,
  DAT_FINE      DATE,
  DTT_TMST      TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_COMPETENZA
(
  COD_TIPO_COMPETENZA  NUMERIC(2),
  DES_TIPO_COMPETENZA  VARCHAR(60),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);




CREATE TABLE TAB_ENTE_RILASCIO_DOC
(
  COD_ENTE_RILASCIO_DOC  VARCHAR(10),
  DES_ENTE_RILASCIO_DOC  VARCHAR(200) NOT NULL,
  DAT_INIZIO             DATE NOT NULL,
  DAT_FINE               DATE,
  DTT_TMST               TIMESTAMP(6)  NOT NULL
);




CREATE TABLE DEC_TIPOLOGIA_SERVIZIO
(
  COD_APPLICAZIONE        VARCHAR(20),
  COD_TIPOLOGIA_SERVIZIO  VARCHAR(20),
  DES_TIPOLOGIA_SERVIZIO  VARCHAR(250),
  DAT_INIZIO              DATE,
  DAT_FINE                DATE,
  DTT_TMST                TIMESTAMP(6)
);




CREATE TABLE DEC_TIPOLOGIA_COMPETENZA
(
  COD_TIPOLOGIA_COMPETENZA  NUMERIC,
  DES_TIPOLOGIA_COMPETENZA  VARCHAR(60),
  COD_FONTE                 NUMERIC,
  COD_TIPO_FONTE            VARCHAR(40),
  DAT_INIZIO                DATE,
  DAT_FINE                  DATE,
  COD_USERAGG               VARCHAR(40),
  DTT_TMST                  TIMESTAMP(6)
);





CREATE TABLE DEC_GRADO_ELEMENTO_COMPETENZA
(
  COD_GRADO_ELEMENTO_COMPETENZA  NUMERIC(2),
  DES_GRADO_ELEMENTO_COMPETENZA  VARCHAR(60),
  DAT_INIZIO                     DATE,
  DAT_FINE                       DATE,
  DTT_TMST                       TIMESTAMP(6)
);




CREATE TABLE DEC_ESITO_PROPOSTA
(
  COD_ESITO_PROPOSTA  CHAR(3),
  DES_ESITO_PROPOSTA  VARCHAR(80),
  DAT_FINE            DATE,
  DAT_INIZIO          DATE,
  DTT_TMST            TIMESTAMP(6)
);




CREATE TABLE DEC_ALLEGATI
(
  COD_APPLICAZIONE     VARCHAR(20),
  COD_ALLEGATO         VARCHAR(10),
  DES_LABEL            VARCHAR(250),
  DES_FORMATO          VARCHAR(250),
  COD_CODICESTRUMENTO  VARCHAR(40),
  COD_FUNZIONE         VARCHAR(40),
  COD_CATEGORIA_FILE   VARCHAR(5),
  TXT_NOTE             VARCHAR(2500),
  PRG_ISTANZA          NUMERIC,
  NUM_DIMENSIONE_MAX   NUMERIC,
  COD_OBBLIGATORIO     CHAR(1),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);

COMMENT ON COLUMN DEC_ALLEGATI.COD_ALLEGATO IS 'definisce il tipo di allegato';

COMMENT ON COLUMN DEC_ALLEGATI.COD_OBBLIGATORIO IS '''S'' obbligatorio ''N'' non obbligatorio ''U'' obbligatorio solo la prima volta';




CREATE TABLE DEC_STATO_DOCUMENTO
(
  COD_STATO_DOCUMENTO  VARCHAR(3),
  DES_STATO_DOCUMENTO  VARCHAR(250),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);




CREATE TABLE DEC_ATTIVITA
(
  COD_ATTIVITA    NUMERIC(6),
  DES_ATTIVITA    VARCHAR(80),
  INPUT           VARCHAR(400),
  OUTPUT          VARCHAR(400),
  TXT_ATTIVITA    VARCHAR(2000),
  COD_COMPETENZA  NUMERIC(6),
  COD_ATECOLIV4   VARCHAR(10),
  DAT_INIZIO      DATE,
  DAT_FINE        DATE,
  DTT_TMST        TIMESTAMP(6)
);




CREATE TABLE DEC_CRITERIO_SOSP_CONS
(
  COD_CRITERIO_SC  VARCHAR(2),
  DES_CRITERIO_SC  VARCHAR(250),
  DAT_INIZIO       DATE,
  DAT_FINE         DATE,
  DTT_TMST         TIMESTAMP(6)
);




CREATE TABLE COMPETENZE_AREA_COMP
(
  COD_COMPETENZA       NUMERIC(6),
  COD_AREA_COMPETENZA  NUMERIC,
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  COD_USERAGG          VARCHAR(40),
  DTT_TMST             TIMESTAMP(6)
);




CREATE TABLE DEC_TIPOLOGIA_FONDO
(
  COD_TIPOLOGIA_FONDO  VARCHAR(10),
  DES_TIPOLOGIA_FONDO  VARCHAR(250),
  IMP_TIPOLOGIA_FONDO  NUMERIC(11,2),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);

COMMENT ON COLUMN DEC_TIPOLOGIA_FONDO.IMP_TIPOLOGIA_FONDO IS 'Capienza della tipologia fondo';




CREATE TABLE DEC_ENTE_EROGATORE
(
  COD_ENTE_EROGATORE  VARCHAR(10),
  DES_ENTE_EROGATORE  VARCHAR(200),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE
);




CREATE TABLE TAB_QUESTURE
(
  COD_QUESTURA  VARCHAR(20),
  DES_QUESTURA  VARCHAR(200),
  DAT_INIZIO    DATE,
  DAT_FINE      DATE,
  DTT_TMST      TIMESTAMP(6)
);




CREATE TABLE DEC_MODALITA_CONVOCAZIONE
(
  COD_MODALITA_CONVOCAZIONE  VARCHAR(10),
  DES_MODALITA_CONVOCAZIONE  VARCHAR(250),
  DAT_INIZIO                 DATE,
  DAT_FINE                   DATE,
  DTT_TMST                   TIMESTAMP(6)
);




CREATE TABLE TAB_RIPTERRITORIALE
(
  COD_RIPTERRITORIALE  VARCHAR(10),
  DES_RIPTERRITORIALE  VARCHAR(200),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6)
);




CREATE TABLE TAB_UNITA_TEMPO
(
  COD_UNITA_TEMPO  VARCHAR(10),
  DES_UNITA_TEMPO  VARCHAR(200),
  DTT_TMST         TIMESTAMP(6)
);




CREATE TABLE DEC_SOGG_ASSICURA
(
  COD_SOGG_ASSICURA  CHAR(3),
  DES_SOGG_ASSICURA  VARCHAR(250),
  COD_POSINA         CHAR(2),
  DAT_INIZIO         DATE,
  DAT_FINE           DATE,
  DTT_TMST           TIMESTAMP(6)
);

COMMENT ON TABLE DEC_SOGG_ASSICURA IS 'Tabella di decodifica del tipo pagamento';

COMMENT ON COLUMN DEC_SOGG_ASSICURA.COD_SOGG_ASSICURA IS 'Identificativo univoco del sogggetto che assicura';

COMMENT ON COLUMN DEC_SOGG_ASSICURA.DES_SOGG_ASSICURA IS 'Descrizione del sogggetto che assicura';

COMMENT ON COLUMN DEC_SOGG_ASSICURA.COD_POSINA IS 'Codice del soggetto che assicura, viene utilizzato per l''impostazione del foglio excel dei pagamenti
"06" se l''ente  assicura e Italia Lavoro
"00" altro ente';

COMMENT ON COLUMN DEC_SOGG_ASSICURA.DAT_INIZIO IS 'Data inizio validita del soggetto che assicura';

COMMENT ON COLUMN DEC_SOGG_ASSICURA.DAT_FINE IS 'Data fine validita del soggetto che assicura';

COMMENT ON COLUMN DEC_SOGG_ASSICURA.DTT_TMST IS 'TIMESTAMP in cui e stato effettuato l''ultimo aggiornamento del dato';




CREATE TABLE TAB_MEZZITRASP
(
  COD_MEZZITRASP  VARCHAR(10),
  DES_MEZZITRASP  VARCHAR(200) NOT NULL,
  DAT_INIZIO      DATE NOT NULL,
  DAT_FINE        DATE,
  DTT_TMST        TIMESTAMP(6) NOT NULL
);




CREATE TABLE DEC_PERIODO_PAGAMENTO
(
  COD_APPLICAZIONE       VARCHAR(20),
  COD_PERIODO_PAGAMENTO  CHAR(3),
  DES_PERIODO_PAGAMENTO  VARCHAR(250),
  COD_PERPAG             CHAR(1),
  DAT_INIZIO             DATE,
  DAT_FINE               DATE,
  DTT_TMST               TIMESTAMP(6)
);




CREATE TABLE TAB_CORSOTIPO
(
  COD_CORSOTIPO  VARCHAR(10),
  DES_CORSOTIPO  VARCHAR(200),
  DAT_INIZIO     DATE  NOT NULL,
  DAT_FINE       DATE,
  DTT_TMST       TIMESTAMP(6) NOT NULL
);




CREATE TABLE DEC_SUSSIDI_ENTE_EROGATORE
(
  COD_TIPO_SUSSIDIO   VARCHAR(10),
  COD_ENTE_EROGATORE  VARCHAR(10)
);




CREATE TABLE DEC_VERBI
(
  COD_VERBO   NUMERIC(6),
  DES_VERBO   VARCHAR(80),
  DAT_INIZIO  DATE,
  DAT_FINE    DATE,
  DTT_TMST    TIMESTAMP(6)
);




CREATE TABLE DEC_VOCE_COSTO
(
  COD_VOCE_COSTO  VARCHAR(10),
  DES_VOCE_COSTO  VARCHAR(250),
  DAT_INIZIO      DATE,
  DAT_FINE        DATE,
  DTT_TMST        TIMESTAMP(6)
);




CREATE TABLE PROFILO_COMPORTAMENTI
(
  COD_PROFILO   NUMERIC(6),
  COD_ELEMENTO  NUMERIC(6),
  DAT_INIZIO    DATE,
  DAT_FINE      DATE,
  DTT_TMST      TIMESTAMP(6)
);




CREATE TABLE DEC_MOTIVO_CESSAZIONE_TIROCINI
(
  COD_MOTIVO_CESSAZIONE  VARCHAR(10),
  DES_MOTIVO_CESSAZIONE  VARCHAR(250),
  DAT_INIZIO             DATE,
  DAT_FINE               DATE,
  DTT_TMST               TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_COSTO
(
  COD_TIPO_COSTO  VARCHAR(10),
  DES_TIPO_COSTO  VARCHAR(250),
  DAT_INIZIO      DATE,
  DAT_FINE        DATE,
  DTT_TMST        TIMESTAMP(6)
);




CREATE TABLE DEC_ORIGINE_INFO
(
  COD_ORIGINE_INFO  VARCHAR(10),
  DES_ORIGINE_INFO  VARCHAR(250),
  DAT_INIZIO        DATE,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);




CREATE TABLE TAB_OBBLIGOFORMATIVO
(
  COD_OBBLIGOFORMATIVO  VARCHAR(10),
  DES_OBBLIGOFORMATIVO  VARCHAR(200) NOT NULL,
  DAT_INIZIO            DATE NOT NULL,
  DAT_FINE              DATE,
  DTT_TMST              TIMESTAMP(6) NOT NULL
);




CREATE TABLE DEC_TIPOISTITUTO
(
  COD_TIPOISTITUTO  VARCHAR(10),
  DES_TIPOISTITUTO  VARCHAR(200),
  DAT_INIZIO        DATE,
  DAT_FINE          DATE,
  DTT_TMST          TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_AMBITO_CRITERIO
(
  COD_TIPO_AMBITO_CRITERIO  VARCHAR(3),
  DES_TIPO_AMBITO_CRITERIO  VARCHAR(15),
  DTT_TMST                  TIMESTAMP(6)
);




CREATE TABLE DEC_LINGUECONOSCENZACEF
(
  COD_CONOSCENZA_CEF  VARCHAR(10),
  DES_CONOSCENZA_CEF  VARCHAR(1000),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_ELEMENTO
(
  COD_TIPO_ELEMENTO  NUMERIC(2),
  DES_TIPO_ELEMENTO  VARCHAR(40),
  DAT_INIZIO         DATE,
  DAT_FINE           DATE,
  DTT_TMST           TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_PAGAMENTO
(
  COD_APPLICAZIONE    VARCHAR(20),
  COD_TIPO_PAGAMENTO  CHAR(3),
  DES_TIPO_PAGAMENTO  VARCHAR(250),
  COD_TIPOPAG_IL      CHAR(1),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_ATTRIBUTO
(
  COD_TIPO_ATTRIBUTO  VARCHAR(10),
  DES_TIPO_ATTRIBUTO  VARCHAR(250),
  DAT_INIZIO          DATE,
  DAT_FINE            DATE,
  DTT_TMST            TIMESTAMP(6)
);




CREATE TABLE DEC_TIPO_TIROCINIO
(
  COD_TIPO_TIROCINIO   VARCHAR(40),
  COD_PADRE_TIROCINIO  VARCHAR(10),
  DES_TIPO_TIROCINIO   VARCHAR(250),
  DAT_INIZIO           DATE NOT NULL,
  DAT_FINE             DATE,
  DTT_TMST             TIMESTAMP(6) NOT NULL
);




CREATE TABLE DEC_AREA_COMPETENZA
(
  COD_AREA_COMPETENZA  NUMERIC,
  DES_AREA_COMPETENZA  VARCHAR(60) NOT NULL,
  TXT_AREA_COMPETENZA  VARCHAR(200),
  COD_FONTE            NUMERIC,
  COD_TIPO_FONTE       VARCHAR(40),
  DAT_INIZIO           DATE,
  DAT_FINE             DATE,
  COD_USERAGG          VARCHAR(40) NOT NULL,
  DTT_TMST             TIMESTAMP(6) NOT NULL  
);




CREATE TABLE DEC_TIPOPAG_PAI
(
  COD_TIPOPAG_PAI  VARCHAR(10),
  DES_TIPOPAG_PAI  VARCHAR(250),
  DAT_INIZIO       DATE,
  DAT_FINE         DATE,
  DTT_TMST         TIMESTAMP(6)
);




CREATE TABLE TAB_INTERVENTI
(
  COD_INTERVENTO  VARCHAR(10),
  DES_INTERVENTO  VARCHAR(200)  NOT NULL,
  DAT_INIZIO      DATE NOT NULL,
  DAT_FINE        DATE,
  DTT_TMST        TIMESTAMP(6) NOT NULL
);


CREATE TABLE COMPETENZA_ELEMENTI
(
  COD_COMPETENZA                 NUMERIC(6),
  COD_ELEMENTO                   NUMERIC(6),
  COD_GRADO_ELEMENTO_COMPETENZA  NUMERIC(2),
  DAT_INIZIO                     DATE,
  DAT_FINE                       DATE,
  DTT_TMST                       TIMESTAMP(6)
);
--- TABELLE PORTATE DA J


CREATE TABLE DEC_MESI
(
  COD_MESE  VARCHAR(10)                   NOT NULL,
  DES_MESE  VARCHAR(250)                  NOT NULL
);





CREATE TABLE DEC_STATO_LAVORATORE
(
  COD_STATO  VARCHAR(3)                       NULL,
  DES_STATO  VARCHAR(50)                      NULL
);



CREATE TABLE DEC_FASCIA_ETA
(
  COD_TIPO_FASCIA  VARCHAR(10)            NOT NULL,
  COD_FASCIA_ETA   VARCHAR(10)            NOT NULL,
  DES_FASCIA_ETA   VARCHAR(250)           NOT NULL
);




CREATE TABLE DEC_STATO_SELEZIONE_DETTAGLIO
(
  COD_STATO  VARCHAR(3)                   NOT NULL,
  DES_STATO  VARCHAR(30)                      NULL
);

COMMENT ON COLUMN DEC_STATO_SELEZIONE_DETTAGLIO.DES_STATO IS 'Descrizione dello stato dell''associazione Studente/Azienda';




CREATE TABLE DEC_TIPO_SOGGETTO
(
  COD_TIPO_SOGGETTO  VARCHAR(1)           NOT NULL,
  DES_TIPO_SOGGETTO  VARCHAR(250)         NOT NULL
);

COMMENT ON COLUMN DEC_TIPO_SOGGETTO.COD_TIPO_SOGGETTO IS 'Codice che identifica il tipo di soggetto';

COMMENT ON COLUMN DEC_TIPO_SOGGETTO.DES_TIPO_SOGGETTO IS 'Descrizione del tipo di soggetto';



CREATE TABLE DEC_MOTIVO_RIFIUTO
(
  COD_MOTIVORIF  VARCHAR(6)               NOT NULL,
  DES_MOTIVORIF  VARCHAR(100)                 NULL
);





CREATE TABLE DEC_STATO_ISCRIZIONE_PERSONA
(
  COD_STATO  VARCHAR(10)                  NOT NULL,
  DES_STATO  VARCHAR(250)                 NOT NULL
);


CREATE TABLE DEC_STATO_ISCRIZIONE
(
  COD_STATO  VARCHAR(10)                  NOT NULL,
  DES_STATO  VARCHAR(250)                 NOT NULL
);




CREATE TABLE DEC_FORMATO_FILE
(
  COD_FORMATO          VARCHAR(10)        NOT NULL,
  DES_FORMATO          VARCHAR(250)       NOT NULL,
  DES_TIPI_ESTENSIONE  VARCHAR(2000)      NOT NULL
);




CREATE TABLE DEC_LIV_TIPO_AMMORTIZZATORE
(
  COD_LIVELLO_AMMORTIZZATORE  VARCHAR(10) NOT NULL,
  COD_TIPO_AMMORTIZZATORE     VARCHAR(10) NOT NULL
);


CREATE TABLE DEC_TIPO_DOCENZA
(
	COD_TIPO_DOCENZA     VARCHAR(10) NOT NULL ,
	DES_TIPO_DOCENZA     VARCHAR(250) NOT NULL ,
	DAT_INIZIO           DATE NOT NULL ,
	DAT_FINE             DATE NULL ,
	DTT_TMST             TIMESTAMP(6) NOT NULL 
);


COMMENT ON TABLE DEC_TIPO_DOCENZA IS 'Contiene le tipologie di Docenza previste per ogni azione del Piano Personalizzato.';
COMMENT ON COLUMN DEC_TIPO_DOCENZA.COD_TIPO_DOCENZA IS 'Codice tipo docenza:
ISU = Individualizzata Sessione Unica';

CREATE TABLE DEC_CALCOLO_ORE
(
	COD_CALCOLO_ORE      VARCHAR(3) NOT NULL ,
	DES_CALCOLO_ORE      VARCHAR(200) NOT NULL ,
	DAT_INIZIO           DATE NOT NULL ,
	DAT_FINE             DATE NULL 
);

COMMENT ON COLUMN DEC_CALCOLO_ORE.COD_CALCOLO_ORE IS 'Il codice indica la modalit� con la quale deve essere calcolata la somma di ore.

000 = non viene oeffettuato alcun troncamento
001 = per ogni orario indicato viene effettuato l''eventuale troncamento dei minuti eccedenti l''ora e successivamente sommato insieme alle altre righe
002 = viene effettuata la somma di tutte le ore  poi effettuato l''eventuale troncamento, sulla sommatoria, eccedente l''ora';

--20160621

CREATE TABLE DEC_TIPO_RAGGRUPPAMENTO
(
	COD_TIPO_RAGGRUPPAMENTO VARCHAR(10) NOT NULL ,
	DES_TIPO_RAGGRUPPAMENTO VARCHAR(250) NOT NULL ,
	DAT_INIZIO           DATE NOT NULL ,
	DAT_FINE             DATE NULL ,
	DTT_TMST             TIMESTAMP(6) NOT NULL 
);

CREATE TABLE RAGGRUPPAMENTO_INTERMEDIARI
(
	COD_INTERM_PRINCIPALE VARCHAR(11) NOT NULL ,
	COD_INTERM_AGGREGATO VARCHAR(11) NOT NULL ,
	COD_TIPO_RAGGRUPPAMENTO VARCHAR(10) NOT NULL ,
	DAT_INIZIO           DATE NOT NULL ,
	COD_APPLICAZIONE     VARCHAR(20) NOT NULL ,
	DAT_FINE             DATE NULL ,
	COD_USERINS          VARCHAR(40) NOT NULL ,
	DTT_TMSTINS          TIMESTAMP(6) NOT NULL ,
	COD_USERAGG          VARCHAR(40) NULL ,
	DTT_TMSTAGG          TIMESTAMP(6) NULL 
);
-- 20170213

CREATE TABLE DEC_ATTRIBUTI_COSTO
(
	COD_ATTRIBUTO        VARCHAR(20) 	NOT NULL ,
	DES_ATTRIBUTO        VARCHAR(250) 	NOT NULL ,
	DAT_INIZIO           DATE 			NOT NULL ,
	DAT_FINE             DATE 			NULL ,
	DTT_TMST             TIMESTAMP(6) 	NOT NULL 
);

COMMENT ON TABLE DEC_ATTRIBUTI_COSTO IS 'La  tabella censisce gli attributi che verrano utilizzati per il calcolo del consuntivo';

CREATE TABLE DEC_MISURE
(
	COD_MISURA           VARCHAR(5) NOT NULL ,
	COD_APPLICAZIONE     VARCHAR(20) NOT NULL ,
	COD_TIPOLOGIA_COSTO  VARCHAR(20),
	DES_MISURA           VARCHAR(250) NOT NULL ,
	DAT_INIZIO           DATE NOT NULL ,
	DAT_FINE             DATE NULL ,
	DTT_TMST             TIMESTAMP(6) NOT NULL 
);

COMMENT ON TABLE DEC_MISURE IS 'La tabella rappresenta l''elenco delle Misure previste per Garanzia Giovani e, per i progetti non Garanzia Giovani, rappresenta l''elenco dei raggruppamenti delle attivit�';

COMMENT ON COLUMN DEC_MISURE.COD_MISURA IS 'Codice Misura';

COMMENT ON COLUMN DEC_MISURE.COD_APPLICAZIONE IS 'Codice Applicazione';

COMMENT ON COLUMN DEC_MISURE.DES_MISURA IS 'Descrizione Misura';
  
-- 20170831

CREATE TABLE PROGETTI_SIGMA
(
	IDE_PROGETTO_SIGMA   INTEGER NOT NULL ,
	COD_LOCALE_PROGETTO  VARCHAR(60) NOT NULL ,
	AAAA_COMPETENZA      DATE NULL ,
	COD_MISURA           VARCHAR(5) NULL ,
	COD_APPLICAZIONE     VARCHAR(20) NULL ,
	DAT_INIZIO           DATE NOT NULL ,
	DAT_FINE             DATE NULL ,
	DTT_TMST             TIMESTAMP(6) NOT NULL 
);

-- 20190516

CREATE TABLE DEC_STATO_ELENCO (
  cod_stato_elenco VARCHAR(3) NOT NULL,
  des_stato_elenco VARCHAR(250) NOT NULL,
  dat_inizio DATE NOT NULL,
  dat_fine DATE,
  dtt_tmst TIMESTAMP(6) WITHOUT TIME ZONE NOT NULL
) ;

  -- 20190905
  
  CREATE TABLE DEC_NATURA_CUP (
  COD_NATURA_CUP VARCHAR(3) NOT NULL,
  DES_NATURA_CUP VARCHAR(250) NOT NULL,
  DAT_INIZIO DATE NOT NULL,
  DAT_FINE DATE,
  DTT_TMST TIMESTAMP(6) WITHOUT TIME ZONE NOT NULL
) 
WITH (oids = false);

	COMMENT ON COLUMN DEC_NATURA_CUP.COD_NATURA_CUP
	IS 'Assume i seguenti valori:
	06 impresa non produttiva
	07 impresa produttiva';


ALTER TABLE DEC_TIPO_RAGGRUPPAMENTO OWNER TO plus_dizionari;
ALTER TABLE RAGGRUPPAMENTO_INTERMEDIARI OWNER TO plus_dizionari;
ALTER TABLE COMPETENZA_ELEMENTI OWNER TO plus_dizionari;
ALTER TABLE COMPETENZE_AREA_COMP OWNER TO plus_dizionari;
ALTER TABLE COMPETENZE_TIPOLOGIA_COMP OWNER TO plus_dizionari;
ALTER TABLE DEC_ALLEGATI OWNER TO plus_dizionari;
ALTER TABLE DEC_AREA_COMPETENZA OWNER TO plus_dizionari;
ALTER TABLE DEC_AREA_RIFERIMENTO OWNER TO plus_dizionari;
ALTER TABLE DEC_ATTIVITA OWNER TO plus_dizionari;
ALTER TABLE DEC_CAUSA_EVENTO_MOBILITA OWNER TO plus_dizionari;
ALTER TABLE DEC_CAUSA_FINE_DID OWNER TO plus_dizionari;
ALTER TABLE DEC_CERTIFICATORI OWNER TO plus_dizionari;
ALTER TABLE DEC_CALCOLO_ORE OWNER TO plus_dizionari;
ALTER TABLE DEC_COMPETENZE OWNER TO plus_dizionari;
ALTER TABLE DEC_CONDIZIONE_TIROCINIO OWNER TO plus_dizionari;
ALTER TABLE DEC_CRITERIO_SOSP_CONS OWNER TO plus_dizionari;
ALTER TABLE DEC_DESTINATARIO OWNER TO plus_dizionari;
ALTER TABLE DEC_DETTAGLIOISTITUTO OWNER TO plus_dizionari;
ALTER TABLE DEC_ELEMENTI OWNER TO plus_dizionari;
ALTER TABLE DEC_ENTE_EROGATORE OWNER TO plus_dizionari;
ALTER TABLE DEC_ESITO_CONVOCAZIONE OWNER TO plus_dizionari;
ALTER TABLE DEC_ESITO_PROPOSTA OWNER TO plus_dizionari;
ALTER TABLE DEC_EVENTI_INTERVENTO OWNER TO plus_dizionari;
ALTER TABLE DEC_FASCIA_ETA OWNER TO plus_dizionari;
ALTER TABLE DEC_FORMATO_FILE OWNER TO plus_dizionari;
ALTER TABLE DEC_GRADO_ELEMENTO_COMPETENZA OWNER TO plus_dizionari;
ALTER TABLE DEC_LINGUECONOSCENZACEF OWNER TO plus_dizionari;
ALTER TABLE DEC_LIV_TIPO_AMMORTIZZATORE OWNER TO plus_dizionari;
ALTER TABLE DEC_MESI OWNER TO plus_dizionari;
ALTER TABLE DEC_MODALITA_CONVOCAZIONE OWNER TO plus_dizionari;
ALTER TABLE DEC_MOTIVO_CESSAZIONE_TIROCINI OWNER TO plus_dizionari;
ALTER TABLE DEC_MOTIVO_CONVOCAZIONE OWNER TO plus_dizionari;
ALTER TABLE DEC_MOTIVO_RIFIUTO OWNER TO plus_dizionari;
ALTER TABLE DEC_MOTIVO_RIFIUTO_PATTO OWNER TO plus_dizionari;
ALTER TABLE DEC_ORIGINE_INFO OWNER TO plus_dizionari;
ALTER TABLE DEC_PERIODO_PAGAMENTO OWNER TO plus_dizionari;
ALTER TABLE DEC_PROFILI OWNER TO plus_dizionari;
ALTER TABLE DEC_SOGG_ASSICURA OWNER TO plus_dizionari;
ALTER TABLE DEC_STATI_FILE_PROFILO OWNER TO plus_dizionari;
ALTER TABLE DEC_STATO_DOCUMENTO OWNER TO plus_dizionari;
ALTER TABLE DEC_STATO_ISCRIZIONE OWNER TO plus_dizionari;
ALTER TABLE DEC_STATO_ISCRIZIONE_PERSONA OWNER TO plus_dizionari;
ALTER TABLE DEC_STATO_LAVORATORE OWNER TO plus_dizionari;
ALTER TABLE DEC_STATO_PROCEDURA OWNER TO plus_dizionari;
ALTER TABLE DEC_STATO_SELEZIONE_DETTAGLIO OWNER TO plus_dizionari;
ALTER TABLE DEC_STRINT_AREA OWNER TO plus_dizionari;
ALTER TABLE DEC_STRINT_MACROSTRUMENTO OWNER TO plus_dizionari;
ALTER TABLE DEC_SUSSIDI_ENTE_EROGATORE OWNER TO plus_dizionari;
ALTER TABLE DEC_SUSSIDIO OWNER TO plus_dizionari;
ALTER TABLE DEC_TARGET OWNER TO plus_dizionari;
ALTER TABLE DEC_TERRITORIO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_AMBITO_CRITERIO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_ATTRIBUTO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_COMPETENZA OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_CONVENZIONE OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_COSTO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_COSTO_PIANO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_DOCENZA OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_ELEMENTO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_EVENTO_MOBILITA OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_INCENTIVO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_PAGAMENTO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_PARAM_REPORT OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_PATTO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_PROCESSO_ATTIVITA OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_REDDITO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_REPORT OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_SOGGETTO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPO_TIROCINIO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPOISTITUTO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPOLOGIA_AZIONE OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPOLOGIA_COMPETENZA OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPOLOGIA_FONDO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPOLOGIA_SERVIZIO OWNER TO plus_dizionari;
ALTER TABLE DEC_TIPOPAG_PAI OWNER TO plus_dizionari;
ALTER TABLE DEC_VERBI OWNER TO plus_dizionari;
ALTER TABLE DEC_VOCE_COSTO OWNER TO plus_dizionari;
ALTER TABLE DEC_WSC OWNER TO plus_dizionari;
ALTER TABLE PRG_SIGMA OWNER TO plus_dizionari;
ALTER TABLE PROGETTI_SIGMA OWNER TO plus_dizionari;
ALTER TABLE PROFILO_COMPETENZE OWNER TO plus_dizionari;
ALTER TABLE PROFILO_COMPORTAMENTI OWNER TO plus_dizionari;
ALTER TABLE TAB_AMBITI_DISCIPLINARI OWNER TO plus_dizionari;
ALTER TABLE TAB_AMBITO_TERRITORIALE OWNER TO plus_dizionari;
ALTER TABLE TAB_COMUNI_CAP OWNER TO plus_dizionari;
ALTER TABLE TAB_CORSOTIPO OWNER TO plus_dizionari;
ALTER TABLE TAB_DOCUMENTI OWNER TO plus_dizionari;
ALTER TABLE TAB_ENTE_RILASCIO_DOC OWNER TO plus_dizionari;
ALTER TABLE TAB_FORMAGIURIDICA OWNER TO plus_dizionari;
ALTER TABLE TAB_INTERVENTI OWNER TO plus_dizionari;
ALTER TABLE TAB_MEZZITRASP OWNER TO plus_dizionari;
ALTER TABLE TAB_MOBILITAGEOG OWNER TO plus_dizionari;
ALTER TABLE TAB_NATURAGIURIDICA OWNER TO plus_dizionari;
ALTER TABLE TAB_OBBLIGOFORMATIVO OWNER TO plus_dizionari;
ALTER TABLE TAB_QUESTURE OWNER TO plus_dizionari;
ALTER TABLE TAB_RIPTERRITORIALE OWNER TO plus_dizionari;
ALTER TABLE TAB_STATOCIVILE OWNER TO plus_dizionari;
ALTER TABLE TAB_STATOESPERIENZA OWNER TO plus_dizionari;
ALTER TABLE TAB_TIPODISABILITA OWNER TO plus_dizionari;
ALTER TABLE TAB_TIPORECAPITO OWNER TO plus_dizionari;
ALTER TABLE TAB_TRASFERTE OWNER TO plus_dizionari;
ALTER TABLE TAB_UNITA_TEMPO OWNER TO plus_dizionari;
ALTER TABLE TIPO_EVENTO_CAUSA_MOBILITA OWNER TO plus_dizionari;
ALTER TABLE DEC_ATTRIBUTI_COSTO  OWNER TO plus_dizionari;
ALTER TABLE DEC_MISURE  OWNER TO plus_dizionari;
ALTER TABLE DEC_STATO_ELENCO  OWNER TO plus_dizionari;
ALTER TABLE DEC_NATURA_CUP  OWNER TO plus_dizionari;