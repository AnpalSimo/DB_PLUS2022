
\echo 'executing script 33_Pk_Cla.sql';


ALTER TABLE TAB_ESPERIENZELAV ADD 
	CONSTRAINT PK_ESPERIENZELAV 
	PRIMARY KEY 
	(COD_ESPERIENZELAV) ;
 

ALTER TABLE TAB_SESSO ADD
  CONSTRAINT PK_SESSO
 PRIMARY KEY
 (COD_SESSO) ;



ALTER TABLE TAB_CATEGORIE181 ADD
  CONSTRAINT PK_CATEGORIE181
 PRIMARY KEY
 (COD_CATEGORIA181) ;



ALTER TABLE TAB_ATECOLIV4 ADD
  CONSTRAINT PK_ATECOLIV4
 PRIMARY KEY
 (COD_ATECOLIV4) ;



ALTER TABLE TAB_QUALPROFLIV3 ADD
  CONSTRAINT PK_QUALPROFLIV3
 PRIMARY KEY
 (COD_QUALPROFLIV3) ;



ALTER TABLE TAB_QUALPROFLIV2 ADD
  CONSTRAINT PK_QUALPROFLIV2
 PRIMARY KEY
 (COD_QUALPROFLIV2) ;



ALTER TABLE TAB_CCNL ADD
  CONSTRAINT PK_CCNL
 PRIMARY KEY
 (COD_CCNL) ;




ALTER TABLE TAB_NAZIONI ADD
  CONSTRAINT PK_NAZIONI
 PRIMARY KEY
 (COD_NAZIONE) ;




ALTER TABLE TAB_TIPOLOGIA_CONTR ADD
  CONSTRAINT PK_TIPOLOGIA_CONTR
 PRIMARY KEY
 (COD_TIPOLOGIACONTR) ;



ALTER TABLE TAB_MODALITALAV ADD
  CONSTRAINT PK_MODALITALAV
 PRIMARY KEY
 (COD_MODALITALAV) ;



ALTER TABLE TAB_COMUNI ADD
  CONSTRAINT PK_COMUNI
 PRIMARY KEY
 (COD_COMUNE) ;



ALTER TABLE TAB_TIPO_INTERMEDIARIO ADD
  CONSTRAINT PK_TIPO_INTERMEDIARIO
 PRIMARY KEY
 (COD_TIPO_INTERMEDIARIO) ;



ALTER TABLE TAB_STATUSOCCUPAZ ADD
  CONSTRAINT PK_STATUSOCCUPAZ
 PRIMARY KEY
 (COD_STATUSOCCUPAZ) ;



ALTER TABLE TAB_STUDIOLIVELLO ADD
  CONSTRAINT PK_STUDIOLIVELLO
 PRIMARY KEY
 (COD_LIVELLOSTUDIO) ;


ALTER TABLE TAB_CATEGORIE_PROTETTE ADD
  CONSTRAINT PK_CATEGORIE_PROTETTE
 PRIMARY KEY
 (COD_CATEGORIA) ;



ALTER TABLE TAB_ATECOLIV3 ADD
  CONSTRAINT PK_ATECOLIV3
 PRIMARY KEY
 (COD_ATECOLIV3) ;



ALTER TABLE TAB_INTERMEDIARI ADD
  CONSTRAINT PK_INTERMEDIARI
 PRIMARY KEY
 (COD_INTERMEDIARIO) ;



ALTER TABLE TAB_ALBO_INTERMEDIARI ADD
  CONSTRAINT PK_TAB_ALBO_INTERMEDIARI
 PRIMARY KEY
 (COD_ALBO_INTERMEDIARI) ;



ALTER TABLE TAB_ATECOLIV1 ADD
  CONSTRAINT PK_ATECOLIV1
 PRIMARY KEY
 (COD_ATECOLIV1) ;



ALTER TABLE TAB_ALBO_SEDI ADD
  CONSTRAINT PK_TAB_ALBO_SEDI
 PRIMARY KEY
 (IDE_ALBO_SEDI) ;



ALTER TABLE TAB_REGIONI ADD
  CONSTRAINT PK_REGIONI
 PRIMARY KEY
 (COD_REGIONE) ;



ALTER TABLE TAB_FIGURAPROFESS ADD
  CONSTRAINT PK_FIGURAPROFESS
 PRIMARY KEY
 (COD_FIGURAPROFESS) ;



ALTER TABLE TAB_COMUNE_INTERMEDIARI ADD
  CONSTRAINT PK_COMUNE_INTERMEDIARI
 PRIMARY KEY
 (COD_INTERMEDIARIO, COD_COMUNE) ;



ALTER TABLE TAB_INTERMEDIARI_FILIALI ADD
  CONSTRAINT PK_TAB_INTERMEDIARI_FILIALI
 PRIMARY KEY
 (COD_INTERMEDIARIO, COD_FILIALE) ;



ALTER TABLE TAB_LIVCONTRATTUALE ADD
  CONSTRAINT PK_LIVCONTRATTUALE
 PRIMARY KEY
 (COD_LIVCONTRATTUALE) ;



ALTER TABLE TAB_LISTESPECIALI ADD
  CONSTRAINT PK_LISTESPECIALI
 PRIMARY KEY
 (COD_LISTESPEC) ;



ALTER TABLE TAB_INFORMATICAGRADOCONOSC ADD
  CONSTRAINT PK_INFORMATICAGRADOCONOSC
 PRIMARY KEY
 (COD_GRADOCONOSC) ;



ALTER TABLE TAB_QUALPROFLIV0 ADD
  CONSTRAINT PK_QUALPROFLIV0
 PRIMARY KEY
 (COD_QUALPROFLIV0) ;



ALTER TABLE TAB_MOTIVO_PERMESSO ADD
  CONSTRAINT PK_MOTIVO_PERMESSO
 PRIMARY KEY
 (COD_MOTIVO) ;



ALTER TABLE TAB_LINGUE ADD
  CONSTRAINT PK_LINGUE
 PRIMARY KEY
 (COD_LINGUA) ;




ALTER TABLE TAB_STATUS_STRANIERO ADD
  CONSTRAINT PK_STATUS_STRANIERO
 PRIMARY KEY
 (COD_STATUS_STRANIERO) ;



ALTER TABLE TAB_TIPOATTESTAZ ADD
  CONSTRAINT PK_TIPOATTESTAZ
 PRIMARY KEY
 (COD_TIPOATTESTAZ) ;



ALTER TABLE TAB_QUALPROFLIV1 ADD
  CONSTRAINT PK_QUALPROFLIV1
 PRIMARY KEY
 (COD_QUALPROFLIV1) ;




ALTER TABLE TAB_LINGUECONOSCENZA ADD
  CONSTRAINT PK_LINGUECONOSCENZA
 PRIMARY KEY
 (COD_CONOSCENZA) ;



ALTER TABLE TAB_TIPOPATENTIGUIDA ADD
  CONSTRAINT PK_TIPOPATENTIGUIDA
 PRIMARY KEY
 (COD_TIPO_PATENTEGUIDA) ;



ALTER TABLE TAB_ALBI ADD
  CONSTRAINT PK_ALBI
 PRIMARY KEY
 (COD_ALBO) ;



ALTER TABLE TAB_TIPOAZIENDA ADD
  CONSTRAINT PK_TIPOAZIENDA
 PRIMARY KEY
 (COD_TIPOAZIENDA) ;



ALTER TABLE TAB_STUDIOTITOLO ADD
  CONSTRAINT PK_STUDIOTITOLO
 PRIMARY KEY
 (COD_TITOLOSTUDIO) ;



ALTER TABLE TAB_INFORMATICACONOSC ADD
  CONSTRAINT PK_INFORMATICACONOSC
 PRIMARY KEY
 (COD_CONOSCENZA) ;



ALTER TABLE TAB_CITTADINANZE ADD
  CONSTRAINT PK_CITTADINANZE
 PRIMARY KEY
 (COD_CITTADINANZA) ;




ALTER TABLE TAB_PROVINCE ADD
  CONSTRAINT PK_PROVINCE
 PRIMARY KEY
 (COD_PROVINCIA) ;



ALTER TABLE TAB_CONDIZIONE_STATUS ADD
  CONSTRAINT PK_CONDIZIONE_STATUS
 PRIMARY KEY
 (COD_CONDIZIONE_STATUS) ;



ALTER TABLE TAB_ATECOLIV2 ADD
  CONSTRAINT PK_ATECOLIV2
 PRIMARY KEY
 (COD_ATECOLIV2) ;




ALTER TABLE TAB_RAPPORTILAVORO ADD
  CONSTRAINT PK_RAPPORTILAVORO
 PRIMARY KEY
 (COD_TIPOLOGIACONTR) ;




ALTER TABLE TAB_QUALPROFLIV4 ADD
  CONSTRAINT PK_QUALPROFLIV4
 PRIMARY KEY
 (COD_QUALPROFLIV4) ;



ALTER TABLE TAB_ATECOLIV0 ADD
  CONSTRAINT PK_ATECOLIV0
 PRIMARY KEY
 (COD_ATECOLIV0) ;



ALTER TABLE TAB_AMPIEZZA ADD
  CONSTRAINT PK_AMPIEZZA
 PRIMARY KEY
 (COD_AMPIEZZA) ;


ALTER TABLE TAB_AREAPROFESS ADD
  CONSTRAINT PK_AREAPROFESS
 PRIMARY KEY
 (COD_AREAPROFESS) ;


ALTER TABLE TAB_TIPOPATENTINI ADD
  CONSTRAINT PK_TIPOPATENTINI
 PRIMARY KEY
 (COD_TIPO_PATENTINO) ;

ALTER TABLE TAB_PROFILING
	ADD CONSTRAINT  PK_TAB_PROFILING PRIMARY KEY (COD_PROFILING) ; 