
\echo 'executing script 703_ddl.create.functions.Sill.sql';

\c :dbName :usersill

CREATE OR REPLACE FUNCTION FN_GET_DATA_FINE_EFFETTIVA(inIdeIntervento IN NUMERIC)
RETURNS DATE AS $$

	declare v_data DATE;
    puntoError  VARCHAR(3800) := '';
    codErrore NUMERIC := 0;
    msgErrore VARCHAR(3800) := '';
BEGIN
	
	
	puntoError := 'Prendo la data fine dell'' INTERVENTO ';
	SELECT i.dat_fine
       INTO STRICT  v_data
       FROM   intervento i
       WHERE  i.ide_intervento = inIdeIntervento;

      BEGIN
          puntoError := 'Prendo la data fine dell ESITO';
             SELECT eai.dat_fine_effettiva
             INTO STRICT  v_data
             FROM   esito_azione_intervento eai
             WHERE  eai.ide_intervento = inIdeIntervento;
      EXCEPTION
            WHEN NO_DATA_FOUND THEN
                -- il lavoratore non ESISTE
                 codErrore:=2;
                 msgErrore := codErrore||':'||'FN_GET_DATA_FINE_EFFETTIVA: '||puntoError||' l'' Intervento : ' ||inIdeIntervento|| ' non ha ESITO';

               BEGIN

          -- l''esito non ESISTE
                 puntoError := 'Prendo la data fine di INTERVENTO PROROGA SOSPENSIONI'      ;
                 SELECT ips.dat_fine
                 INTO STRICT  v_data
                 FROM   intervento_proroga_sospensione ips
                 WHERE  ips.ide_intervento = inIdeIntervento
                 AND    ips.cod_evento = 'PRO'
                 AND    ips.prg_prog_sosp = (
				                              SELECT MAX (ips2.prg_prog_sosp)
                                              FROM   intervento_proroga_sospensione ips2
                                              WHERE  ips2.ide_intervento = inIdeIntervento
											  AND    ips2.cod_evento = 'PRO'
                                            );
               EXCEPTION
                 WHEN NO_DATA_FOUND THEN
                      codErrore:=1;
                      msgErrore := codErrore||':'||'FN_GET_DATA_FINE_EFFETTIVA: '||puntoError||' l'' Intervento : ' ||inIdeIntervento|| ' non ha PROROGHE';

               END;
      END;
      codErrore:=0;
      puntoError := 'La data fine e : '|| v_data;
      msgErrore := codErrore||':'||'FN_GET_DATA_FINE_EFFETTIVA: '||puntoError||' per l'' Intervento : ' ||inIdeIntervento;

       RETURN v_data;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
       codErrore:=3;
       msgErrore:=codErrore||':'||'FN_GET_DATA_FINE_EFFETTIVA: '||puntoError||' l'' Intervento : ' ||COALESCE(inIdeIntervento::text,'null')|| ' non esiste';
       RETURN null;
                      	   
END;
$$ LANGUAGE plpgsql;

GRANT EXECUTE ON FUNCTION fn_get_data_fine_effettiva(numeric) TO :userapp,:userappj WITH GRANT OPTION;



CREATE OR REPLACE FUNCTION SP_TEST_CANC_CONVOCAZIONI(inIdeLavoratore in integer, inPrgConvocazione in integer, codErrore out integer, msgErrore out varchar ) AS $$
	DECLARE
		
		numConvocazioni integer;
		
	BEGIN

		codErrore:= null;
		msgErrore:= null;

		SELECT count(*)
		   INTO STRICT  numConvocazioni
		   FROM LAV_PATTO_SERVIZIO
		   WHERE ide_Lavoratore = inIdeLAvoratore
			 AND Prg_Convocazione = inPrgConvocazione;
			 
		IF  numConvocazioni > 0
		THEN
			codErrore := 1;
			msgErrore := 'Convocazione presente sul Patto di servizio';
			return;
		end if;
	END;
$$ LANGUAGE plpgsql;

GRANT EXECUTE ON FUNCTION SP_TEST_CANC_CONVOCAZIONI(integer,integer) TO :userapp,:userappj WITH GRANT OPTION;


CREATE OR REPLACE FUNCTION SP_VERIFICA_ELIMINA_LAVORATORE ( inCodFiscale in varchar,  
															msgErrore OUT varchar, 
															codErrore OUT INTEGER, 
															tipoErrore OUT VARCHAR
													) AS $$
  /*============================================================================================
   Procedure   : SP_VERIFICA_DEL_LAVORATORE_NEW
   Descrizione :
    Procedura di verifica stati del lavoratore al fine della determinazione della
    sua eliminazione.
    I test verificano la presenza o meno di record nelle opportune tabella.
    La presenza di record indichera' che il lavoratore non e' eliminabile (codice del test=1)
    L'esito di ogni test e' segnalato distintamente in variabile che viene ritornata all'applicazione.
    Inoltre l'esito dell'elaborazione viene riassunto nella variabile  codErrore come di seguito indicato.
    Valore -2 : elaborazione fallita con conseguente inattendibilita' dei test eventualmente effettuati;
    ad esempio in caso di errore.
    Valore -1 : elaborazione terminata correttamente ma non e' stato trovati il Codice Fiscale
    del lavoratore.
    Valore 1 : elaborazione terminata correttamente quindi si possono valutare l'esito dei singoli
    test interrogando le relative variabili. I test rilevano che almeno uno di essi ha avuto esito negativo
    ovvero sono stati riscontrati record nelle tabelle. Di conseguenza il lavoratore non e' eliminabile.
    Valore 0 :  elaborazione terminata correttamente ed esito positivo su tutti i test. Non sono stati
    riscontrati record per il lavoratore quindi e' eliminabile.
  ============================================================================================*/
DECLARE
	ideLavoratore         integer;
	ideIscrizione         integer;
	puntoErrore           varchar(1000);
	appo                  integer;
	errRichPag            VARCHAR(30) := '';
	errModPag             VARCHAR(30) := '';
	v_appo                integer;
	v_StatoIscr           varchar;
	v_VerificaPattoAttivazione varchar(1) :=null;
	v_VerificaPai varchar(10) :=null;
	v_VerificaPersona varchar(10) :=null;
	v_VerificaTirocinio varchar(10) :=null;
	v_VerificaModPag varchar(10) :=null;
	v_VerificaRichPag varchar(10) :=null;
	v_VerificaSussidio varchar(10) :=null;
	v_VerificaIscrizione varchar(10) := NULL;
	 
 BEGIN

    msgErrore  := 'ERRORE INIZIALE' ;
    tipoErrore := '-1' ;
    codErrore  := -2 ;
	
	

	puntoErrore :=  ' Get ISCRIZIONE_PERSONA ';

	SELECT COALESCE(MAX(P.ide_iscrizione_persona),0) into STRICT v_VerificaIscrizione
	FROM ISCRIZIONE_PERSONA p,iscrizione_persona_stato ips
	WHERE p.cod_persona = inCodFiscale
	AND   p.ide_iscrizione_persona = ips.ide_iscrizione_persona
	AND   ips.dtt_fin IS NULL;
	  
	IF v_VerificaIscrizione <> '0' THEN
		v_VerificaIscrizione := '1';
	else
		v_VerificaIscrizione := '0';
	END IF;
		
 --- CARICO IDE_LAVORATORE DA CODICE FISCALE
	BEGIN

		SELECT l.IDE_LAVORATORE
		into STRICT ideLavoratore
		FROM LAVORATORE l
		WHERE l.COD_FISCALE_LAVORATORE = inCodFiscale;

	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			puntoErrore :=  'Get LAVORATORE ';
			msgErrore := ':'||'SP_VERIFICA_DEL_LAVORATORE_NEW: '||puntoErrore||' -  Il Lavoratore ('||inCodFiscale||') non esiste';
			RETURN ;
	END;

-----------------------
-- ERRORI BLOCCANTI

    -- MODULO PAGAMENTO
	puntoErrore :=  'Get MODULO_PAGAMENTO (BLOCK) ';
        		
	SELECT count(*) INTO STRICT v_appo
	FROM  modulo_pagamento mp, 
		  modulo_intervento_attore mia,
		  intervento_attore ia,
		  modulo_pagamento_stato mps
	WHERE mp.ide_modulo_pagamento = mia.ide_modulo_pagamento
	AND   mp.ide_modulo_pagamento = mps.ide_modulo_pagamento
	AND   mia.prg_intervento_attore = ia.prg_intervento_attore
	AND   ia.cod_anagrafica_attore = 'PF'
	AND   ia.cod_attore::numeric = ideLavoratore
	AND   mps.cod_stato_documento = 'DEF'
	AND   mps.dtt_fine_val_rec IS NULL;

	IF v_appo > 0 THEN
		v_VerificaModPag := '2';
		raise notice 'No data found in modulo pagamento (DEF)';
	END IF;
			

	SELECT count(*) INTO STRICT v_appo
	FROM  modulo_pagamento mp, 
		modulo_intervento_attore mia,
		intervento_attore ia,
		modulo_pagamento_stato mps
	WHERE mp.ide_modulo_pagamento = mia.ide_modulo_pagamento
	AND   mp.ide_modulo_pagamento = mps.ide_modulo_pagamento
	AND   mia.prg_intervento_attore = ia.prg_intervento_attore
	AND   ia.cod_anagrafica_attore = 'PF'
	AND   ia.cod_attore::numeric = ideLavoratore
	AND   mps.cod_stato_documento = 'BOZ'
	AND   mps.dtt_fine_val_rec IS NULL;

	IF v_appo > 0 THEN
		v_VerificaModPag := '1';
		raise notice 'No data found in modulo pagamento (DEF)';
	END IF;

   -- RICHIESTA PAGAMENTO
	puntoErrore :=  'Get RICHIESTA_PAGAMENTO (BLOCK) ';

	SELECT count(*) INTO STRICT v_appo
	FROM  richiesta_pagamento rp,
		  richiesta_pagamento_pai rpp,
		  richiesta_pagamento_stato rps,
		  lav_pai lp
	WHERE rp.ide_richiesta_pagamento = rpp.ide_richiesta_pagamento
	AND   rpp.ide_pai = lp.ide_pai
	AND   rpp.ide_richiesta_pagamento = rps.ide_richiesta_pagamento
	AND   rps.cod_stato_documento = 'DEF'
	AND   rps.dtt_fin IS NULL
	AND   lp.ide_lavoratore = ideLavoratore;
			
			
	IF v_appo > 0 THEN
		raise notice 'Data found in richiesta pagamento (DEF)';
		v_VerificaRichPag :='2';
	ELSE
		SELECT count(*) INTO STRICT v_appo
		FROM  richiesta_pagamento rp,
			  richiesta_pagamento_pai rpp,
			  richiesta_pagamento_stato rps,
			  lav_pai lp
		WHERE rp.ide_richiesta_pagamento = rpp.ide_richiesta_pagamento
		AND   rpp.ide_pai = lp.ide_pai
		AND   rpp.ide_richiesta_pagamento = rps.ide_richiesta_pagamento
		AND   rps.cod_stato_documento = 'BOZ'
		AND   rps.dtt_fin IS NULL
		AND   lp.ide_lavoratore = ideLavoratore;
	
		IF v_appo > 0 THEN
			raise notice 'Data found in richiesta pagamento (BOZ)';
			v_VerificaRichPag :='1';
		else
			v_VerificaRichPag :='0';
		END IF;
	END IF;

  -- CONTROLLI BLOCCANTI
	puntoErrore :=  ' CONTROLLI BLOCCANTI ';
	IF v_VerificaRichPag = '2' THEN
		errRichPag := '1';
	ELSE
		errRichPag := '0';
	END IF;
	
	IF  v_VerificaModPag = '2' THEN
		errModPag := '1';
	ELSE
		errModPag := '0';
	END IF;
	
	msgErrore :=  errModPag  || errRichPag;

	IF msgErrore <> '00' THEN
       codErrore := 2;
       tipoErrore := '1';
       msgErrore := 'ERRORE! Errore di tipo BLOCCANTE. ';
       return;
    END IF;

-------------------------------
-- WARNING

  ---- PERSONA

	puntoErrore :=  ' Get PERSONA ';
	SELECT count(*) INTO STRICT v_appo
	FROM persona p
	WHERE p.ide_lavoratore = ideLavoratore;
	
	if v_appo > 0 THEN
		raise notice 'Data found in persona';
		v_VerificaPersona := '1';
	else
		v_VerificaPersona:='0';
	end if;

---- PATTO SERVIZIO

	puntoErrore :=  ' Get PATTO_SERVIZIO ';
	SELECT count(*) INTO STRICT v_appo
	FROM LAV_PATTO_SERVIZIO lps,
		 lav_patto_servizio_stato lpss
	WHERE lps.IDE_LAVORATORE = ideLavoratore
	AND   lpss.ide_patto_servizio = lps.ide_patto_servizio
	AND   lpss.dtt_fine_val_rec IS NULL
	AND   lpss.cod_stato_documento = 'DEF';
	
	if v_appo > 0 THEN
		raise notice 'Data found in lav_patto_servizio (DEF)';
		v_VerificaPattoAttivazione  := '1';
	else
		v_VerificaPattoAttivazione:='0';
	end if;
	

---- PIANO AZIONE

	puntoErrore := puntoErrore ||  ' - Get LAV_PAI (Pai) ';
	SELECT count(*) INTO STRICT v_appo
	FROM LAV_PAI lp,
		 lav_pai_stato lpstato
	WHERE lp.IDE_LAVORATORE = ideLavoratore
	AND   lp.ide_pai = lpstato.ide_pai
	AND   lpstato.cod_stato_documento = 'DEF'
	AND   lpstato.dat_fine_val_rec IS NULL;

	if v_appo > 0 THEN
		raise notice 'Data found in lav_pai (DEF)';
		v_VerificaPai:='1';
	else
		v_VerificaPai := '0';
	end if;

-- TIROCINIO

	puntoErrore := puntoErrore ||  ' - Get INTERVENTO_ATTORE (Tirocinio) ';
	SELECT count(*) INTO STRICT v_appo
	FROM INTERVENTO_ATTORE ia
	WHERE ia.COD_ATTORE::numeric = ideLavoratore
	AND   ia.COD_ANAGRAFICA_ATTORE = 'PF';

	if v_appo > 0 THEN
		raise notice 'Data found in intervento_attore';
		v_VerificaTirocinio := '1';
	else
		v_VerificaTirocinio:='0';
	end if;


-- CONTROLLI PER WARNING

	puntoErrore := ' - CONTROLLO PER WARNING ';

	IF v_VerificaPattoAttivazione = '1' THEN
		msgErrore := CHR(10) || ' - PATTOATTIVAZIONE';
	END IF;
	
	IF  v_VerificaRichPag = '1' THEN
		msgErrore := msgErrore || CHR(10) || ' - RICHIESTA_PAG';
	END IF;
	
	IF  v_VerificaPai = '1'  THEN
		msgErrore := msgErrore || CHR(10) || ' - PAI';
	END IF;
	
	IF  v_VerificaPersona = '1'  THEN
		msgErrore := msgErrore || CHR(10) || ' - PERSONA';
	END IF;
	
	IF  v_VerificaTirocinio = '1'  THEN
		msgErrore := msgErrore || CHR(10) || ' - TIROCINIO';
	END IF;
	
	IF  v_VerificaModPag = '1'  THEN
		msgErrore := msgErrore || CHR(10) || ' - MOD_PAGAMENTO';
	END IF;
	
	IF  v_VerificaIscrizione = '1'  THEN
		msgErrore := msgErrore || CHR(10) || ' - ISCRIZIONE';
	END IF;

	IF v_VerificaModPag = '1'  OR  v_VerificaRichPag = '1'    THEN
		v_VerificaModPag := '1'  ;
	ELSE
		v_VerificaModPag := '0'  ;
	END IF;

	IF 	v_VerificaPattoAttivazione = '1' OR
		v_VerificaPai = '1'              OR
		v_VerificaPersona = '1'          OR
		v_VerificaTirocinio = '1'        OR
		v_VerificaIscrizione = '1'       
	THEN
		msgErrore := CHR(10) || 'WARNING! Presente: ' || msgErrore;
		codErrore := '1';
	ELSE
		codErrore := '0';
		msgErrore := CHR(10) || 'OK! - VERIFICA TERMINATA. NON SONO STATI TROVATI VINCOLI.';
	END IF;

	
    raise notice 'v_VerificaPattoAttivazione: %', v_VerificaPattoAttivazione;
    raise notice 'v_VerificaPai: %', v_VerificaPai;
    raise notice 'v_VerificaPersona: %', v_VerificaPersona;
    raise notice 'v_VerificaTirocinio: %', v_VerificaTirocinio;
    raise notice 'v_VerificaIscrizione: %', v_VerificaIscrizione;
    
	tipoErrore:= v_VerificaPattoAttivazione || v_VerificaPai ||	v_VerificaPersona || v_VerificaTirocinio ||	v_VerificaModPag ||	v_VerificaIscrizione;


	raise notice '% : % -> %', codErrore, tipoErrore, msgErrore;
 
EXCEPTION
	WHEN others THEN
		raise notice 'Errore : % ',sqlerrm;
		msgErrore := codErrore|| ':'||'SP_VERIFICA_DEL_LAVORATORE_NEW: '||puntoErrore||' - '||inCodFiscale||' ERRORE:'||sqlerrm;
		--raise_application_error(-20000,msgErrore);
END;
$$ LANGUAGE plpgsql;

GRANT EXECUTE ON FUNCTION SP_VERIFICA_ELIMINA_LAVORATORE(varchar) TO :userapp,:userappj WITH GRANT OPTION;


CREATE OR REPLACE FUNCTION sp_sede_lavoro_cancellabile (
  inidedatorelavoro numeric,
  incodsedelavoro varchar,
  out coderrore integer,
  out msgerrore varchar
) AS $$
       --   TYPE LISTA_NOMI IS TABLE OF VARCHAR2(31);
    -- checklist LISTA_NOMI ;
     --sql_stmt VARCHAR2(200);
  BEGIN
         /*
       0: cancellabile -  msgErrore='' '
       1: non cancellabile - msgErrore=<nome_prima_tabella_con presenza>
       2: errore oracle - msgErrore=<descrizione_errore>
       */
       codErrore := 0;
       msgErrore := '';
     --  checklist := LISTA_NOMI('INTERVENTO_SEDE','DL_DISPONIBILITA_INTERVENTI',  'DL_FABBISOGNI_OCCUPAZIONALI');

       SELECT COUNT(*) INTO STRICT codErrore
       FROM dl_disponibilita_interventi ddi WHERE ddi.ide_datore_lavoro = inIdeDatoreLavoro
       AND ddi.cod_sede_lavoro = inCodSedeLavoro LIMIT 1;

       IF codErrore = 0 THEN
           SELECT COUNT(*) INTO STRICT codErrore
           FROM dl_fabbisogni_occupazionali dfo WHERE dfo.ide_datore_lavoro = inIdeDatoreLavoro
           AND dfo.cod_sede_lavoro = inCodSedeLavoro limit 1;

           IF codErrore = 0 THEN
               SELECT COUNT(*) INTO STRICT codErrore
               FROM intervento_sede iss, intervento_convenzione ic,convenzione c
               WHERE iss.ide_intervento = ic.ide_intervento
               AND   iss.prg_sede = iss.prg_sede
               AND   ic.prg_convenzione = c.prg_convenzione
               AND   c.ide_datore_lavoro = inIdeDatoreLavoro
               AND   iss.prg_sede = inCodSedeLavoro::numeric limit 1;

               IF codErrore = 0 THEN
                   msgErrore:= ' OK ';
               ELSE
                   msgErrore:= 'Errore in intervento_sede. ';
               END IF;

           ELSE
              msgErrore:= 'Errore in dl_fabbisogni_occupazionali. ';
           END IF;
       ELSE
              msgErrore:= 'Errore in dl_disponibilita_interventi. ';
       END IF;


  END;
  $$ LANGUAGE plpgsql;
  
GRANT EXECUTE ON FUNCTION SP_SEDE_LAVORO_CANCELLABILE(numeric, varchar) TO :userapp,:userappj WITH GRANT OPTION;


CREATE OR REPLACE FUNCTION SP_ELIMINA_LAVORATORE(inCodFiscale in varchar, codErrore out integer, msgErrore out varchar ) 
	AS $$
DECLARE
	
		ideSoggetto           	integer;
		userID                	varchar;
		ideIscrizionePersona  	integer;
		ideLavoratore         	integer;
		codStatoIscrizione    	varchar;
		wk_conta_interventi   	integer;
		puntoErrore           	varchar(100) := null;
		appo                  	integer;
		v_Pers               	varchar(1) := NULL;
		v_Iscr               	varchar(1) := NULL;
		v_Mod                	varchar(1) := NULL;
		v_Rich               	varchar(1) := NULL;
		v_Pai                	varchar(1) := NULL;
		v_Patto              	varchar(1) := NULL;
		v_Lav                	varchar(1) := NULL;
		v_All                	varchar(1) := NULL;
		v_Int                	varchar(1) := NULL;
		
		tmp						RECORD;
		
		integer_var				integer;

 BEGIN
	msgErrore := null;
	codErrore := 1;
	
	BEGIN
    
        -- verifica lavoratore esistente
        puntoErrore := 'Get LAVORATORE(SILL) ';
        SELECT IDE_LAVORATORE
        into STRICT ideLavoratore
        FROM lavoratore
        WHERE COD_FISCALE_LAVORATORE = inCodFiscale;
    
    EXCEPTION
		WHEN NO_DATA_FOUND THEN
        	raise exception 'Lavoratore con codice fiscale % non trovato.', inCodFiscale;
    END;	
   -------
     --elimino ALLEGATI
    puntoErrore := 'Open cursore ALLEGATI ';
	
	v_All := '0';
	FOR tmp IN 
		SELECT DISTINCT(a1.ide_allegato)
		FROM  lavoratore l1
					LEFT OUTER JOIN lav_pai lp1 ON l1.ide_lavoratore = lp1.ide_lavoratore
					LEFT OUTER JOIN richiesta_pagamento_pai rpp ON lp1.ide_pai = rpp.ide_pai
					LEFT OUTER JOIN richiesta_pagamento_allegati rpa on rpp.ide_richiesta_pagamento = rpa.ide_richiesta_pagamento,
			  allegati a1
		WHERE  l1.cod_fiscale_lavoratore =  inCodFiscale
		AND    a1.ide_allegato = rpa.ide_allegato 
		
		UNION
		
		SELECT DISTINCT(a2.ide_allegato)
		FROM   lavoratore l2
					LEFT OUTER JOIN modulo_intervento_attore mia ON l2.cod_fiscale_lavoratore = mia.cod_fiscale_lavoratore
					LEFT OUTER JOIN modulo_intatt_allegati mial ON mia.ide_modulo_intervento_attore = mial.ide_modulo_intervento_attore
				,
				allegati a2
		WHERE  l2.cod_fiscale_lavoratore =  inCodFiscale
		AND    a2.ide_allegato = mial.ide_allegato    
				
		UNION
		
		SELECT DISTINCT(a3.ide_allegato)
		FROM   lavoratore l3
					LEFT OUTER JOIN iscrizione_persona ip ON l3.cod_fiscale_lavoratore = ip.cod_persona
					LEFT OUTER JOIN iscrizione_persona_allegati ipa ON ip.ide_iscrizione_persona = ipa.ide_iscrizione_persona
			   , 
			   allegati a3
		WHERE  COALESCE(ip.cod_persona,l3.cod_fiscale_lavoratore) =  inCodFiscale
		AND    a3.ide_allegato = ipa.ide_allegato
				
		UNION
		
		SELECT DISTINCT(a4.ide_allegato)
		FROM   lavoratore l4
					LEFT OUTER JOIN lav_pai lp ON l4.ide_lavoratore = lp.ide_lavoratore
					LEFT OUTER JOIN lav_azioni_pai lap ON lp.ide_pai = lap.ide_pai
					LEFT OUTER JOIN lav_azioni_pai_allegati lapa ON lap.ide_azione_pai = lapa.ide_azione_pai
			   , 
			   allegati a4
		WHERE  l4.cod_fiscale_lavoratore =  inCodFiscale
		AND    a4.ide_allegato = lapa.ide_allegato
		
	LOOP
			delete from ALLEGATI where  ide_allegato = tmp.ide_allegato ; 
			v_All := '1';
	END LOOP;
	
	IF v_All = '0' THEN
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') non ha ALLEGATI';
	ELSE
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') e'' stato cancellato da ALLEGATI';
	END IF;
	
	
	
	v_Pers:='0';
	FOR tmp IN 
		SELECT  p.IDE_SOGGETTO,  p.IDE_LAVORATORE
		FROM PERSONA p
		WHERE p.COD_PERSONA = inCodFiscale
		
	LOOP
		puntoErrore := ' 1 - delete PERSONA ';
		
		delete FROM PERSONA
		where  IDE_SOGGETTO = tmp.IDE_SOGGETTO;
		
		puntoErrore := ' 2 - delete SOGGETTO ';
		delete FROM SOGGETTO
		where  IDE_SOGGETTO =tmp.IDE_SOGGETTO;
		v_Pers:='1';
	END LOOP;
	
	IF v_Pers = '1' THEN
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||')  e'' stato cancellato da PERSONA,UTENTE,SOGGETTO';
	ELSE
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') non e'' presente in PERSONA';
	END IF;
	
    puntoErrore := 'Open cursore ISCRIZIONE_PERSONA ';
	
	v_Iscr := '0';
	FOR tmp IN
		select IDE_ISCRIZIONE_PERSONA
		FROM  ISCRIZIONE_PERSONA
		WHERE COD_PERSONA = inCodFiscale
	LOOP
		puntoErrore := ' 1 - delete ISCRIZIONE_PERSONA ';
		delete from PERSONA where IDE_ISCRIZIONE_PERSONA = tmp.IDE_ISCRIZIONE_PERSONA;
		v_Iscr = '1';
	END LOOP;
	
	IF v_Iscr = '1' THEN
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') e'' stato cancellato da ISCRIZIONE_PERSONA';
	ELSE
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') non e'' presente in ISCRIZIONE_PERSONA';
	END IF;
	
	
	
	
	puntoErrore := 'Open cursore INTERVENTO_ATTORE ';
	
	v_Int := '0';
	FOR tmp IN
		select IDE_INTERVENTO
		FROM  INTERVENTO_ATTORE
		WHERE COD_ATTORE::numeric = ideLavoratore
		AND   COD_ANAGRAFICA_ATTORE = 'PF'
	LOOP
		puntoErrore := 'delete INTERVENTO_ATTORE ';
		v_Int := '1';
		
		delete FROM INTERVENTO_ATTORE where COD_ATTORE::numeric = ideLavoratore;
		
		select count(*) into STRICT wk_conta_interventi
		FROM  INTERVENTO_ATTORE
		WHERE IDE_INTERVENTO = tmp.IDE_INTERVENTO;

		if wk_conta_interventi = 0 then

			puntoErrore := 'delete INTERVENTO ';
			
			delete FROM INTERVENTO
			where IDE_INTERVENTO = tmp.IDE_INTERVENTO;
		end if;
	END LOOP;
	
	IF v_Int = '1' THEN
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') e'' stato cancellato da INTERVENTO_ATTORE';
	ELSE
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') non e'' presente in INTERVENTO_ATTORE';
	END IF;
	


	puntoErrore := 'Open cursore MODULO_INTERVENTO_ATTORE ';
	v_Mod := '0';
	FOR tmp IN
		select IDE_MODULO_PAGAMENTO
		FROM  MODULO_INTERVENTO_ATTORE
		WHERE COD_FISCALE_LAVORATORE = inCodFiscale
		
	LOOP
		puntoErrore := 'delete MODULO_INTERVENTO_ATTORE ';
		
		v_Mod := '1';
		
		select count(*)
		into STRICT wk_conta_interventi
		FROM  MODULO_INTERVENTO_ATTORE
		WHERE IDE_MODULO_PAGAMENTO = tmp.IDE_MODULO_PAGAMENTO;

		puntoErrore := 'Get MODULO_INTERVENTO_ATTORE count ';
			
		if wk_conta_interventi <> 0 THEN
			puntoErrore := 'delete MODULO_INTERVENTO_ATTORE ';
			delete FROM MODULO_INTERVENTO_ATTORE
			WHERE  COD_FISCALE_LAVORATORE = inCodFiscale;

			puntoErrore := 'delete MODULO_PAGAMENTO ';
			delete FROM MODULO_PAGAMENTO
			where IDE_MODULO_PAGAMENTO = tmp.IDE_MODULO_PAGAMENTO;
		end if;

	END LOOP;
	
	IF v_Mod = '1' THEN
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') e'' stato cancellato da MODULO_INTERVENTO_ATTORE';
	ELSE
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') non e'' presente in MODULO_INTERVENTO_ATTORE';
	END IF;
	
	
	
	puntoErrore := 'Open cursore RICHIESTA_PAGAMENTO ';
    
	v_Rich := '0';
	FOR tmp IN
		select rp.IDE_RICHIESTA_PAGAMENTO
		FROM  RICHIESTA_PAGAMENTO rp,lav_pai lp,richiesta_pagamento_pai rpp
		WHERE rp.ide_richiesta_pagamento = rpp.ide_richiesta_pagamento
		AND   rpp.ide_pai = lp.ide_pai
		AND   lp.ide_lavoratore = ideLavoratore
	LOOP
		puntoErrore := 'delete RICHIESTA_PAGAMENTO ';
		delete FROM RICHIESTA_PAGAMENTO
		where IDE_RICHIESTA_PAGAMENTO = tmp.IDE_RICHIESTA_PAGAMENTO;
		v_Rich = '1';
	END LOOP;
	
	IF v_Rich = '1' THEN
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') e'' stato cancellato da RICHIESTA_PAGAMENTO';
	ELSE
		msgErrore:=msgErrore||CHR(10)||'Il lavoratore ('||inCodFiscale||') non e'' presente in RICHIESTA_PAGAMENTO';
	END IF;
	
	

	DELETE FROM lavoratore l WHERE l.ide_lavoratore = ideLavoratore;
    
	--ROLLBACK;
	GET DIAGNOSTICS integer_var = ROW_COUNT;
	IF integer_var <> 0 THEN
         v_Lav := '1';
    END IF;
	
	
	IF v_Mod =  '0' AND
       v_Rich = '0' AND
       v_Int =  '0' AND
       v_Iscr = '0' AND
       v_Lav =  '0' AND
       v_All =  '0' AND
       v_Pers = '0' 
	THEN
       codErrore := 1;
       msgErrore := msgErrore || CHR(10) || 'Il lavoratore ('||inCodFiscale||') NON  e'' stato cancellato ';
    ELSE
       codErrore := 0;
       msgErrore := msgErrore || CHR(10) || 'Il lavoratore ('||inCodFiscale||')   e'' stato cancellato ';

    END IF;
	
	
END;
$$ LANGUAGE plpgsql;

GRANT EXECUTE ON FUNCTION SP_ELIMINA_LAVORATORE(varchar) TO :userapp,:userappj WITH GRANT OPTION;


CREATE OR REPLACE FUNCTION SP_VERIFICA_ELIMINA_AZIENDA( inCodFiscale in varchar, 
														codErrore out integer, 
														msgErrore out varchar,
														outVerificaConvenzione  out  varchar ,-- 0\1
														outVerificaTirocinio    out  varchar -- 0\1
                                            ) AS $$
 /*============================================================================================
   Procedure   : SP_VERIFICA_ELIMINA_AZIENDA
   Descrizione :
    Procedura di verifica stati dell'azienda al fine della determinazione della
    sua eliminazione.
    I test verificano la presenza o meno di record nelle opportune tabella.
    La presenza di record indichera' che l'azienda non e' eliminabile.
    L'esito di ogni test e' segnalato distintamente in variabile che viene ritornata all'applicazione.
    Inoltre l'esito dell'elaborazione viene riassunto nella variabile  codErrore come di seguito indicato.
    Valore -2 : elaborazione fallita con conseguente inattendibilita' dei test eventualmente effettuati;
    ad esempio in caso di errore Oracle.
    Valore -1 : elaborazione terminata correttamente ma non e' stato trovati il Codice Fiscale
    dell'azienda
    Valore 1 : elaborazione terminata correttamente quindi si possono valutare l'esito dei singoli
    test interrogando le relative variabili. I test rilevano che almeno uno di essi ha avuto esito negativo
    ovvero sono stati riscontrati record nelle tabelle. Di conseguenza l'azienda non e' eliminabile.
    Valore 0 :  elaborazione terminata correttamente ed esito positivo su tutti i test. Non sono stati
    riscontrati record per l'azienda quindi e' eliminabile.
    ============================================================================================*/
	DECLARE
	
		numDL				integer;
		ideDatoreLavoro     DATORE_LAVORO.IDE_DATORE_LAVORO%TYPE;
		numConvenzioni		integer;
		prgCONVENZIONE      CONVENZIONE.PRG_CONVENZIONE%TYPE;
		numInterventi		integer;
		puntoErrore         varchar(100);

	BEGIN

		msgErrore := null;
		codErrore := -2;
		outVerificaConvenzione := null;
		outVerificaTirocinio := null;

		puntoErrore := 'Get DATORE_LAVORO ';
		SELECT 
			count(IDE_DATORE_LAVORO), 
			IDE_DATORE_LAVORO  INTO STRICT numDL, ideDatoreLavoro
		FROM DATORE_LAVORO dl
		WHERE dl.COD_FISCALE_AZIENDA = inCodFiscale
		GROUP BY IDE_DATORE_LAVORO;
		
		IF numDL < 1 THEN
			codErrore:=-1;
			msgErrore := codErrore||':'||'SP_VERIFICA_ELIMINA_AZIENDA: '||puntoErrore||') l''azienda ('||inCodFiscale||') non esiste';
			return;
		END IF;


		puntoErrore := 'Get CONVENZIONE (Convenzione) ';
	  BEGIN	
		SELECT 
			count(C.PRG_CONVENZIONE) INTO STRICT numConvenzioni
		FROM CONVENZIONE C
		WHERE c.IDE_DATORE_LAVORO = ideDatoreLavoro;
	
	    
	 if numConvenzioni > 0 or numConvenzioni is not null then 
        outVerificaConvenzione:='1';
     else
        outVerificaConvenzione:='0';
     end if;	
     
		puntoErrore := 'Get INTERVENTO_CONVENZIONE (Tirocinio) ';
        
		SELECT count(PRG_CONVENZIONE) into STRICT numInterventi
		FROM INTERVENTO_CONVENZIONE ic
		WHERE ic.PRG_CONVENZIONE IN (
              SELECT 
                  C.PRG_CONVENZIONE 
              FROM CONVENZIONE C
              WHERE c.IDE_DATORE_LAVORO = ideDatoreLavoro
        );
		
		IF numInterventi = 0 THEN
			outVerificaTirocinio:='0';
		ELSE 
			outVerificaTirocinio:='1';
		END IF;
	
		IF outVerificaConvenzione = '0' AND outVerificaTirocinio= '0' THEN
			codErrore := 0;
		ELSE
			codErrore := 1;
		END IF;
      END;	

		msgErrore:='Elaborazione terminata con successo per azienda ' || inCodFiscale;
		raise notice 'result: % : %', codErrore, msgErrore;

	EXCEPTION
		WHEN others THEN
			RAISE EXCEPTION 'SP_VERIFICA_ELIMINA_AZIENDA: codErrore -> % | puntoErrore -> %: ERRORE -> %', codErrore, puntoErrore, sqlerrm;
			msgErrore := codErrore || ':' || 'SP_VERIFICA_ELIMINA_AZIENDA: ' ||puntoErrore || ') ' || inCodFiscale || ' ERRORE:' || sqlerrm;
	END;

$$ LANGUAGE plpgsql; 

GRANT EXECUTE ON FUNCTION SP_VERIFICA_ELIMINA_AZIENDA(varchar) TO :userapp,:userappj WITH GRANT OPTION;


/*============================================================================================
   Procedure   : SP_CANCELLAZIONE_AZIENDA
   Descrizione : Procedura di cancellazione di una azienda DA APPLICATIVO
  ============================================================================================*/
CREATE OR REPLACE FUNCTION SP_CANCELLAZIONE_AZIENDA(inCodFiscale in varchar, codErrore out integer, msgErrore out varchar ) as
$$
		DECLARE
  		puntoErrore         varchar(100);
		ideSoggetto           integer;
		userID                integer;
		
		ideDatoreLavoro       integer;
		ideUtenteFAD          integer;
		ideIscrizioneAzienda  integer;
		wk_conta_selezioni    integer;
		nAziende 			  integer;
		nIscrizioni			  integer;
		nEnti 				  integer;
		nUserid				  integer;
	
	BEGIN
		msgErrore := null;
		codErrore := 1;

		puntoErrore := 'Get DATORE_LAVORO ';
	
		SELECT count(IDE_DATORE_LAVORO),
			   IDE_DATORE_LAVORO
			INTO STRICT nAziende,
				 ideDatoreLavoro
		FROM DATORE_LAVORO dl
		WHERE dl.COD_FISCALE_AZIENDA=inCodFiscale
		GROUP BY IDE_DATORE_LAVORO;
		
		-- l'azienda esiste?
		IF nAziende > 0 THEN
			-- l'azienda esiste
			puntoErrore := 'DELETE FROM INTERVENTO ';
			DELETE FROM INTERVENTO
			WHERE IDE_INTERVENTO IN (
				SELECT DISTINCT IDE_INTERVENTO
				FROM INTERVENTO_CONVENZIONE ic,
					 CONVENZIONE c
				WHERE c.IDE_DATORE_LAVORO = ideDatoreLavoro
				and ic.PRG_CONVENZIONE = c.PRG_CONVENZIONE
			);
			
			DELETE FROM SOGGETTO 
			WHERE IDE_SOGGETTO = (
				SELECT E.IDE_SOGGETTO
				FROM ENTE E
				WHERE E.COD_FISCALE_ENTE = inCodFiscale
			);
			
			-- CANCELLA IN CASCADE DA iscrizione_persona_altreinfo, iscrizione_persona_stato
			puntoErrore := 'DELETE FROM iscrizione_persona ';
			delete from ISCRIZIONE_AZIENDA ia
			where ia.COD_FISCALE_AZIENDA=inCodFiscale;
		
			puntoErrore := 'DELETE FROM DATORE_LAVORO';
			DELETE FROM DATORE_LAVORO
			WHERE IDE_DATORE_LAVORO = ideDatoreLavoro;
			
			codErrore := 0;
			msgErrore:='L''Azienda (' || inCodFiscale || ') fornita e'' stata eliminata';

		ELSE
			msgErrore := codErrore || ':' || 'SP_CANCELLAZIONE_AZIENDA: '|| puntoErrore || ') ERRORE: l''azienda con codice fiscale ' || inCodFiscale || ' non esiste.';
            RAISE EXCEPTION 'Nonexistent CF --> %', inCodFiscale;
		END IF;
    	
		
		
	END;
$$ LANGUAGE plpgsql;



GRANT EXECUTE ON FUNCTION SP_CANCELLAZIONE_AZIENDA(varchar) TO :userapp,:userappj WITH GRANT OPTION;

CREATE OR REPLACE FUNCTION sp_registra_intermediari (
  indesdenominazione varchar,
  incodfiscale varchar,
  indesindirizzo varchar,
  incodcomune varchar,
  incodcomunecap varchar,
  incodapplicazione varchar,
  incodtipoint varchar,
  intiposerv varchar,
  inprefix varchar
)
RETURNS varchar AS $$
DECLARE

        if_exist INTEGER;
        var_intermediari INTEGER;
      --  var_org_unit_id INTEGER;
        var_errore VARCHAR(3000);
        --var_prefix VARCHAR(10);
        var_ide_intermediari  VARCHAR(16);
        var_cod_intermediario VARCHAR(16);
        outEsitoProc  VARCHAR ;
        outMsg  VARCHAR;
        var_denominazione VARCHAR(200);
        var_ide_appl_int  appl_int.ide_appl_int%TYPE;
        -- IN FUTURO DA MODIFICARE 'SP' CON CODICE TIPO INTERMEDIARIO

 BEGIN

       SELECT NEXTVAL('seq_intermediari')
       INTO STRICT   var_ide_intermediari::numeric
	   ;
       SELECT (CASE WHEN inPrefix::text IS NULL THEN '0' ELSE inPrefix::text END )||lpad(var_ide_intermediari::text,11-length((CASE WHEN inPrefix::text IS NULL THEN '0' ELSE inPrefix::text END)),'0')
       INTO STRICT   var_cod_intermediario
       ;

	   
       SELECT COUNT(*) INTO STRICT if_exist
       FROM   tab_intermediari ti
       WHERE  upper(TRIM(ti.des_intermediario)) = upper(TRIM(inDesDenominazione));
       var_denominazione := inDesDenominazione;
       IF length(inCodComune) <> 4 THEN
          var_errore := 'Il codice comune  ' ||inCodComune || ' non e formato da 4 caratteri';
          outEsitoProc := var_errore;
          raise exception '%', var_errore USING ERRCODE = 200101;
       END IF;

       IF length(inCodComuneCap) <> 5 and inCodComuneCap <> null THEN
          var_errore := 'Il cap inserito,  ' ||inCodComuneCap || ' non e formato da 5 caratteri';
          outEsitoProc := var_errore;
          raise exception '%', var_errore USING ERRCODE = 200102;
       END IF;

       var_errore := CHR(10)||' Impatto su 8 tabelle. '||CHR(10);
    IF if_exist = 0 THEN
       SELECT NEXTVAL('seq_appl_int')
       INTO STRICT   var_ide_appl_int
	   ;
       -- inserimento su TAB_INTERMEDIARI
       INSERT INTO TAB_INTERMEDIARI (	COD_INTERMEDIARIO, 	COD_TIPO_INTERMEDIARIO, DES_INTERMEDIARIO,DAT_INIZIO, DTT_TMST, FLG_CLASSIFICAZIONE_STANDARD, DES_INDIRIZZO_RECAPITO,
                                    	COD_CAP_RECAPITO, COD_COMUNE_RECAPITO,COD_FISCALE)
       VALUES (var_cod_intermediario,inCodTipoInt,var_denominazione,NOW(),NOW(),'N',inDesIndirizzo,inCodComuneCap,inCodComune ,inCodFiscale);
       var_errore := var_errore  || '1 - Insert su TAB_INTERMEDIARI OK '||CHR(10);

        -- inserimento su TAB_COMUNE_INTERMEDIARI
       INSERT INTO TAB_COMUNE_INTERMEDIARI(COD_INTERMEDIARIO,COD_COMUNE,DAT_INIZIO,DTT_TMST)
       VALUES (var_cod_intermediario,inCodComune,NOW(),NOW());

       var_errore := var_errore  || '2 - Insert su TAB_COMUNE_INTERMEDIARI OK '||CHR(10);

        -- inserimento su APPL_INT
       INSERT INTO APPL_INT(IDE_APPL_INT,COD_APPLICAZIONE,COD_INTERMEDIARIO,COD_USERAGG,DTT_TMSTAGG)
       VALUES (var_ide_appl_int, inCodApplicazione,var_cod_intermediario,'SYSTEM',NOW());
       var_errore := var_errore  || '3 - Insert su APPL_INT OK '||CHR(10);

        -- inserimento su APPL_INT_TIPOSERV
       INSERT INTO APPL_INT_TIPOSERV(IDE_APPL_INT,COD_TIPOLOGIA_SERVIZIO,COD_USERINS,DTT_TMSTINS,COD_USERAGG,DTT_TMSTAGG)
       VALUES (var_ide_appl_int, inTipoServ,'SYSTEM',NOW(),'SYSTEM',NOW());
       var_errore := var_errore  || '4 - Insert su APPL_INT_TIPOSERV OK '||CHR(10);
	   
      outEsitoProc := var_errore ||CHR(10)||'L''intermediario ' || var_denominazione ||' e stato archiviato correttamente con cod_intermediario : ' || var_cod_intermediario || ' .'||CHR(10);
	  
    ELSE
        SELECT ai.ide_appl_int
        INTO STRICT   var_ide_appl_int
        FROM appl_int ai ,tab_intermediari ti
        WHERE ai.cod_intermediario = ti.cod_intermediario
        AND   ai.cod_applicazione = inCodApplicazione
        AND   upper(TRIM(ti.des_intermediario)) = upper(TRIM(inDesDenominazione));

         -- inserimento su APPL_INT_TIPOSERV
       INSERT INTO APPL_INT_TIPOSERV(IDE_APPL_INT,COD_TIPOLOGIA_SERVIZIO,COD_USERINS,DTT_TMSTINS,COD_USERAGG,DTT_TMSTAGG)
       VALUES (var_ide_appl_int, inTipoServ,'SYSTEM',NOW(),'SYSTEM',NOW());
       var_errore := var_errore  || ' - Insert SOLO su APPL_INT_TIPOSERV OK '||CHR(10);
      outEsitoProc := var_errore ||CHR(10)||'L''intermediario ' || var_denominazione ||' e stato gia censito, pertanto e stato inserito solo su APPL_INT_TIPOSERV'||CHR(10);
    END IF;
    --   COMMIT;
       var_errore := var_errore  || ' COMMIT.'||CHR(10);
       outEsitoProc := var_cod_intermediario;
       outMsg := 'OK';
	   RETURN  outMsg||'_'||outEsitoProc;
  EXCEPTION
    WHEN OTHERS THEN
     outEsitoProc := 'Errore : '|| SQLERRM;
     outMsg := 'KO';
--     dbms_output.put_line('Errore : '|| SQLERRM|| ' - Cod_Intermediario : '|| var_cod_intermediario);
     raise notice '%' ,outEsitoProc;
	 RETURN  outMsg||'_'||outEsitoProc;
  --   dbms_output.put_line('ROLLBACK');
  ---   ROLLBACK;

END;
 $$ LANGUAGE plpgsql;


GRANT EXECUTE ON FUNCTION sp_registra_intermediari(varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar) TO :userapp,:userappj WITH GRANT OPTION;

CREATE OR REPLACE FUNCTION fnc_registra_soggprom (
  rigacsv varchar
)
RETURNS varchar AS
$body$
DECLARE
     v_rigaCSV     VARCHAR(800) := null;
     puntoErrore   VARCHAR(350) := null;
     msgErrore     VARCHAR(800) := null;
     msgErr        VARCHAR(800) := null;
     codErrore     INTEGER;
	 
     -- Variabili OUTPUT
	 outCodIntermediario VARCHAR(100) := NULL;
	 -- Variabili INPUT
     inCodFiscale        VARCHAR(16)  := NULL;	 
     inDesDenominazione  VARCHAR(200) := NULL;
     inDesIndirizzo      VARCHAR(250) := NULL;
     inCodComune   		 CHAR(4) := NULL;
     inCodComuneCap  	 CHAR(5) := NULL;
	 inDesCognomeRappr 	 VARCHAR(50)  := NULL;
	 inDesNomeRappr 	 VARCHAR(50)  := NULL;	  
	 inDatNascRappr 	 VARCHAR(10)   := NULL;
	 inCodFiscRappr 	 VARCHAR(16)  := NULL;
	 inComuneNascRappr   CHAR(4) := NULL;
	 inNazNascitaRappr   CHAR(4)  := NULL;
	 inDataDelega 		 VARCHAR(10)   := NULL;
	 inDesDelega 		 VARCHAR(250) := NULL;
     inCodApplicazione   VARCHAR(10)  := NULL;
     inTipoServ          VARCHAR(50)  := NULL;
     inTipoInt           VARCHAR(20)  := NULL;
     inFlgClsStd   		 CHAR(1) := NULL;
	 inCodAteco          VARCHAR(10)  := NULL; 
     inImpMax            VARCHAR(20)  := NULL;
     inImpProd           VARCHAR(3)   := NULL ;
     --
	 
     result INTEGER;
     position1 INTEGER;
     position2 INTEGER;
     numSeparators INTEGER;
     fase VARCHAR(2000):='INIZIO ( ';
  BEGIN
      v_rigaCSV := rigaCSV;
      codErrore:=1;
      fase:='numSeparators ';
       numSeparators:=LENGTH(v_rigaCSV)-LENGTH(REPLACE(v_rigaCSV,';',''));
       raise notice 'numero separatori %', numSeparators;
       --
       IF numSeparators=19 THEN
          --
          fase:='codFiscale ';
          position1:=1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodFiscale:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodFiscale = '' then 
             inCodFiscale := null ;
          end if;
   --       raise notice 'codice fiscale:  %', inCodFiscale;
          --
          fase:='denominazione ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDesDenominazione:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDesDenominazione = '' then 
             inDesDenominazione := null ;
          end if;
   --       raise notice 'denominazione:  %', inDesDenominazione;
          --
          fase:='indirizzo ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDesIndirizzo:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDesIndirizzo = '' then 
             inDesIndirizzo := null ;
          end if;
   --       raise notice 'indirizzo:  %', inDesIndirizzo;          
          --
          fase:='codComune ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodComune:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodComune = '' then 
             inCodComune := null ;
          end if;
    --      raise notice 'comune:  %', inCodComune;     
          --
          fase:='cap ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodComuneCap:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodComuneCap = '' then 
             inCodComuneCap := null ;
          end if;
     --     raise notice 'cap:  %', inCodComuneCap;  
          --
          fase:='cognome rappr';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDesCognomeRappr:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDesCognomeRappr = '' then 
             inDesCognomeRappr := null ;
          end if;
    --      raise notice 'cognome rappr:  %', inDesCognomeRappr;  
          --
          fase:='nome rappr';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDesNomeRappr:=SUBSTR(v_rigaCSV,position1,position2-position1);
		  if inDesNomeRappr = '' then 
             inDesNomeRappr := null ;
          end if;
   --       raise notice 'nome rappr:  %', inDesNomeRappr;  
          --
          fase:='data nascita rappr';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDatNascRappr:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDatNascRappr = '' then 
             inDatNascRappr := null ;
          end if;
   --       raise notice 'data nasc rappr:  %', inDatNascRappr;  
          --
          fase:='cf rappr';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodFiscRappr:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodFiscRappr = '' then 
             inCodFiscRappr := null ;
          end if;
    --      raise notice 'cod fisc rappr:  %', inCodFiscRappr;
		  --
          fase:='comune nascita rappr';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inComuneNascRappr:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inComuneNascRappr = '' then 
             inComuneNascRappr := null ;
          end if;
    --      raise notice 'comune fisc rappr:  %', inComuneNascRappr;
          --
          fase:='nazione nascita rappr';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inNazNascitaRappr:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inNazNascitaRappr = '' then 
             inNazNascitaRappr := null ;
          end if;
   --       raise notice 'nazione nasc rappr:  %', inNazNascitaRappr;
          --
          fase:='Data delega ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDataDelega:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDataDelega = '' then 
             inDataDelega := null ;
          end if;
    --      raise notice 'data delega:  %', inDataDelega;
          --
          fase:='delega ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDesDelega:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDesDelega = '' then 
             inDesDelega := null ;
          end if;
    --      raise notice 'descr delega:  %', inDesDelega;
	      --
          fase:='ateco ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodAteco:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodAteco = '' then 
             inCodAteco := null ;
          end if;
    --      raise notice 'descr delega:  %', inDesDelega;
		  --
		  fase:='codApplicazione ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodApplicazione:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodApplicazione = '' then 
             inCodApplicazione := null ;
          end if;
   --       raise notice 'applicazione:  %', inCodApplicazione;
           --
		  fase:='tipo servizio ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inTipoServ:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inTipoServ = '' then 
             inTipoServ := null ;
          end if;
   --       raise notice 'tipo servizio:  %', inTipoServ;
           --
		  fase:='tipo intermediario ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inTipoInt:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inTipoInt = '' then 
             inTipoInt := null ;
          end if;
          fase:='flgClsInt ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inFlgClsStd:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inFlgClsStd = '' then 
             inFlgClsStd := null ;
          end if;
          fase:='impresaProduttiva ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inImpProd:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inImpProd = '' then 
             inImpProd := null ;
          end if;
   --       raise notice 'tipo intermediario:  %', inTipoInt;
          --
		  fase:='importoMassimmale ';
          position1:=position2+1;
         -- position2:=INSTR(v_rigaCSV,';',position1);
          position2:=LENGTH(v_rigaCSV); 
          inImpMax:=SUBSTR(v_rigaCSV,position1,position2-position1+1);
          if inImpMax = '' then 
             inImpMax := null ;
          end if;
   --       raise notice 'flag:  %', inFlgClsStd;
          --
          fase:='SP_REGISTRA_SOGPROM chiamata';
          
          DECLARE
				var_cod_intermediario  CHAR(12);
				var_ide_sogg_promotore NUMERIC;
			 --   var_org_unit_id NUMBER;
				var_errore VARCHAR(300);
				outCodIntermediario VARCHAR(100);
          BEGIN
				   SELECT NEXTVAL('seq_intermediari')
				   INTO STRICT  var_ide_sogg_promotore
				   ;
				   SELECT lpad(var_ide_sogg_promotore::text,11,'0')
				   INTO STRICT var_cod_intermediario
				   ;
			--	   raise notice 'cod int: %', var_cod_intermediario;
			--	   raise notice 'trim di cod int: %', trim(var_cod_intermediario);
				   
				   var_errore := 'Impatto su 4 tabelle.' || CHR(13);
				   -- inserimento su TAB_INTERMEDIARI
				   INSERT INTO TAB_INTERMEDIARI (	COD_INTERMEDIARIO, 	COD_TIPO_INTERMEDIARIO, DES_INTERMEDIARIO,DAT_INIZIO, DTT_TMST, FLG_CLASSIFICAZIONE_STANDARD, DES_INDIRIZZO_RECAPITO,
													COD_CAP_RECAPITO, COD_COMUNE_RECAPITO,COD_FISCALE,COD_ATECO,COD_IMPRESA_PROD,IMP_MASSIMALE,FLG_PUBBLICO)
				   VALUES (trim(var_cod_intermediario),inTipoInt,inDesDenominazione,NOW(),NOW(),'N',inDesIndirizzo,inCodComuneCap,inCodComune,inCodFiscale,inCodAteco,inImpProd,inImpMax::numeric,inFlgClsStd);
			--	   raise notice 'Insert su TAB_INTERMEDIARI OK.';
				   var_errore := var_errore  || '1 - Insert su TAB_INTERMEDIARI OK ' || CHR(13);
				   -- inserimento su TAB_COMUNE_INTERMEDIARI
				   INSERT INTO TAB_COMUNE_INTERMEDIARI (COD_INTERMEDIARIO, 	COD_COMUNE, DAT_INIZIO, DTT_TMST)
				   VALUES (trim(var_cod_intermediario),inCodComune,NOW(),NOW());
			--	   raise notice 'Insert su TAB_COMUNE_INTERMEDIARI OK.';
				   var_errore := var_errore  || '2 - Insert su TAB_COMUNE_INTERMEDIARI OK ' || CHR(13);	   
				   -- inserimento su CONV_SOGGETTO_PROMOTORE
				   INSERT INTO CONV_SOGGETTO_PROMOTORE (IDE_SOGGETTO_PROMOTORE,COD_FISCALE,DES_DENOMINAZIONE,DES_INDIRIZZO_SEDE,COD_COMUNE_SEDE,COD_CAP_SEDE,
														DES_COGNOME_RAPPR,DES_NOME_RAPPR,DAT_NASCITA_RAPPR,COD_FISCALE_RAPPR,COD_COMUNE_NAS_RAPPR,
														COD_NAZIONE_NAS_RAPPR,COD_INTERMEDIARIO,DAT_DELEGA,DES_DELEGA,DAT_INIZIO,COD_APPLICAZIONE,
														COD_USERAGG,DTT_TMST
														)
				   VALUES (NEXTVAL('seq_conv_soggetto_promotore'),inCodFiscale,inDesDenominazione,inDesIndirizzo,inCodComune,inCodComuneCap,inDesCognomeRappr,inDesNomeRappr,to_date(inDatNascRappr,'dd/mm/yyyy'),
						   inCodFiscRappr,inComuneNascRappr,inNazNascitaRappr,trim(var_cod_intermediario),to_date(inDataDelega,'dd/mm/yyyy'),inDesDelega,NOW(),
						   inCodApplicazione,'SYSTEM',NOW() 
						   );
			--	   raise notice 'Insert su CONV_SOGGETTO_PROMOTORE OK.';               
				   var_errore := var_errore  || '3 - Insert su CONV_SOGGETTO_PROMOTORE OK ' || CHR(13);
				 
				   -- inserimento su APPL_INT
				   INSERT INTO APPL_INT(IDE_APPL_INT,COD_APPLICAZIONE,COD_INTERMEDIARIO,COD_USERAGG,DTT_TMSTAGG)
				   VALUES (NEXTVAL('SEQ_APPL_INT'), inCodApplicazione,trim(var_cod_intermediario),'SYSTEM',NOW());
			--	   raise notice 'Insert su APPL_INT OK.'; 
				   var_errore := var_errore  || '4 - Insert su APPL_INT OK ' || CHR(13);
				   
				    -- inserimento su APPL_INT_TIPOSERV
                    INSERT INTO APPL_INT_TIPOSERV(IDE_APPL_INT,COD_TIPOLOGIA_SERVIZIO,COD_USERINS,DTT_TMSTINS,COD_USERAGG,DTT_TMSTAGG)
                    VALUES (CURRVAL('SEQ_APPL_INT'), inTipoServ,'SYSTEM',NOW(),'SYSTEM',NOW());
            --        raise notice 'Insert su APPL_INT_TIPOSERV OK.';
                    var_errore := var_errore  || '5 - Insert su APPL_INT_TIPOSERV OK '||CHR(13);
                  
				   outCodIntermediario := trim(var_cod_intermediario);
				   raise notice 'Ritorno output  %1 - %2 --> %3', inCodFiscale,inDesDenominazione,outCodIntermediario ;      
				   var_errore := var_errore  || ' COMMIT.' || CHR(13);
						--  COMMIT;
						  
				   RETURN outCodIntermediario;


				   
			  EXCEPTION
				WHEN OTHERS THEN
				 Raise notice 'Errore : %', SQLERRM;
				 Raise notice 'Tipo : %', var_errore;
				-- Raise notice 'ROLLBACK';
				-- ROLLBACK;
				 RETURN 'Errore : ' || SQLERRM;
          END;                                            
         fase:='SP_REGISTRA_SOGPROM ritorno';
         msgErrore := 'Ritorno : ' || msgErrore;
	  	 Raise notice 'Errore : %', msgErrore;
		 Raise notice 'Il codice intermediario genrato per l''azienda % , C.F. - %,  è : %' ,inDesDenominazione,inCodFiscale,outCodIntermediario;
--		 Raise debug ''whatever you want % '', aVariable;
       ELSE
           fase:='numSeparatorsNOT15 ';
		   msgErrore:=fase||') Riga del file('|| v_rigaCSV ||') non valida per numero campi ('||numSeparators||') diverso da quelli attesi (15)';
 --          RAISE notice 'Errore: %', msgErrore USING ERRCODE = '-20001';
       END IF;
       RETURN outCodIntermediario;
  exception
    when others then
       msgErrore := 'SP_CARICA_CSV_SOGGPROM ritorno ERRORE - '||fase||' - ERRORE:'||sqlerrm;
      -- RAISE notice 'Errore: %', msgErrore USING ERRCODE = '-20000';
      RETURN 'ERRORE:'||sqlerrm;
  END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;


GRANT EXECUTE ON FUNCTION fnc_registra_soggprom(varchar) TO :userapp,:userappj WITH GRANT OPTION;


CREATE OR REPLACE FUNCTION sp_updrichpag (
)
RETURNS void AS
$body$
DECLARE

    c1 cursor for 
        SELECT r.ide_richiesta_pagamento,rpsp.dat_stato, r.imp_pagamento,p.ide_pai
        from   richiesta_pag_stato_procedura rpsp, richiesta_pagamento r, tab_intermediari i,lav_pai lp,
               richiesta_pagamento_pai p, template_pai_misure t
        WHERE rpsp.COD_STATO_PROCEDURA 	= 'APP'
        AND   rpsp.DTT_FIN IS NULL
        AND   i.COD_ENTE_EROGATORE = 'ANPALSERV'
        AND   (t.COD_MISURA = '1B' OR t.COD_MISURA = '1C')
        and   r.ide_richiesta_pagamento = rpsp.ide_richiesta_pagamento
  	    and   i.cod_intermediario = r.cod_intermediario
  		and   p.ide_richiesta_pagamento = r.ide_richiesta_pagamento
    	and   lp.ide_pai = p.ide_pai
    	and   lp.ide_template_pai = t.ide_template_pai
        and   lp.ide_pai in  (
            select  s.ide_pai
            from    lav_azioni_pai lap ,esito_azione_intervento e, 
                    lav_azioni_pai_profiling lapp,lav_pai s
            where   lap.ide_pai = s.ide_pai
            and     lap.ide_azione_pai = e.ide_azione_pai
            and     e.cod_esito_azione_pai <> 'AN'
            and     e.ide_azione_pai = lapp.ide_azione_pai
        )
        ;
        
                
    c     RECORD ;  
    num_rows            INTEGER := 0;
  --  var_dat_richiesta   richiesta_pag_info_pagamento.dat_competenza%TYPE := null;  
    var_dat_richiesta   esito_azione_intervento.dat_fine_esito%TYPE := null;  
    v_ide_richiesta_pag richiesta_pagamento.ide_richiesta_pagamento%TYPE;
    v_imp_pagato        richiesta_pagamento.imp_pagamento%TYPE;
    v_data_stato        richiesta_pag_stato_procedura.dat_stato%TYPE;
    v_now               TIMESTAMP(6) := now()::timestamp(6);
    v_return            integer := 0;
    v_flag              richiesta_pag_info_pagamento.flg_rendicontabile%TYPE;
BEGIN
    open c1;
     
   loop
    fetch c1 into c ;
    
      exit when not found ;
 --   for counter in c1 Loop
    --   raise notice 'valore: % - % ' ,counter.ricpag, counter.datstato  ;
       
     v_ide_richiesta_pag := c.ide_richiesta_pagamento;
     v_imp_pagato        := c.imp_pagamento;
     v_data_stato        := c.dat_stato;
     
      select distinct(max(e.dat_fine_esito))
       into   STRICT var_dat_richiesta
       from   esito_azione_intervento e, lav_pai lp,lav_azioni_pai lap,richiesta_pagamento_pai r
       where  e.ide_azione_pai = lap.ide_azione_pai
       and    lap.ide_pai = lp.ide_pai
       and    lp.ide_pai = r.ide_pai
       and    e.cod_esito_azione_pai <> 'AN'
       and    r.ide_richiesta_pagamento = v_ide_richiesta_pag ;
   
        raise notice 'ide_richiesta : %  ' , v_ide_richiesta_pag;
        raise notice 'imp_pagato : % ' , v_imp_pagato;
        raise notice 'dat_stato : % ' , v_data_stato;
        raise notice 'dat_richiesta : % ' , var_dat_richiesta;                        
        raise notice 'data insert : % ' , v_now;                        

        raise LOG 'ide_richiesta : %  ' , v_ide_richiesta_pag;
        raise LOG 'imp_pagato : % ' , v_imp_pagato;
        raise LOG 'dat_stato : % ' , v_data_stato;
        raise LOG 'dat_richiesta : % ' , var_dat_richiesta;                        

                   
       update  richiesta_pag_stato_procedura s
       set     dtt_fin = v_now,
       	       dtt_tmstagg = v_now,
               cod_useragg = 'SYSTEM',
               txt_note = 'Chiusura stato per richiesta del progetto di predisposizione per creazione pacchetto SIGMA'
       where   ide_richiesta_pagamento = v_ide_richiesta_pag
       and     cod_stato_procedura = 'APP'
       and     dtt_fin is null;       
     GET DIAGNOSTICS num_rows = ROW_COUNT; 
	 IF num_rows = 1 THEN
	   raise notice 'Update richiesta_pag_stato_procedura per ide % OK - Stato APP Chiuso',v_ide_richiesta_pag;
       raise LOG 'Update richiesta_pag_stato_procedura per ide % OK - Stato APP Chiuso',v_ide_richiesta_pag;
       v_return = 1;
        
       GET DIAGNOSTICS num_rows = ROW_COUNT; 

       insert into richiesta_pag_stato_procedura(cod_stato_procedura,ide_richiesta_pagamento,dtt_ini,dat_stato,dtt_fin,txt_note,cod_userins,dtt_tmstins,cod_useragg,dtt_tmstagg)
        values('PAG',v_ide_richiesta_pag,v_now,v_data_stato , null, 'Apertura stato per richiesta del progetto di predisposizione per creazione pacchetto SIGMA', 'SYSTEM',v_now, 'SYSTEM',v_now);
       IF num_rows = 1 THEN
		  raise notice 'Insert richiesta_pag_stato_procedura per ide % OK - Stato PAG Inserito.',v_ide_richiesta_pag;
          raise LOG 'Insert richiesta_pag_stato_procedura per ide % OK - Stato PAG Inserito.',v_ide_richiesta_pag;
          v_return = 1;
       ELSE
          raise notice 'Insert richiesta_pag_stato_procedura per ide % NON OK - Riapro lo stato APP.',v_ide_richiesta_pag;  
          raise LOG 'Insert richiesta_pag_stato_procedura per ide % NON OK .',v_ide_richiesta_pag;  
          v_return = 0;
         raise EXCEPTION 'Insert su richiesta_pag_stato_procedura NON OK!!'; 
         ROLLBACK;
  	   END IF;
      /*
      	RICHIESTA_PAG_INFO_PAGAMENTO.FLG_RENDICONTABILE 
        o	Valorizzare con S  se RICHIESTA_PAGAMENTO.IMP_PAGAMENTO > 0
        o	Altrimenti valorizzare con N

      */           
      if  v_imp_pagato > 0 then
          v_flag := 'S';
      else
          v_flag := 'N';
      end if;
      
      GET DIAGNOSTICS num_rows = ROW_COUNT; 
       insert into richiesta_pag_info_pagamento(ide_richiesta_pagamento,imp_pagato,cod_wbe,cod_mandato,dat_competenza,flg_rendicontabile,cod_userins,dtt_tmstins,cod_useragg,dtt_tmstagg)
        values(v_ide_richiesta_pag,v_imp_pagato,null,null,var_dat_richiesta,v_flag,'SYSTEM',v_now,'SYSTEM',v_now); 
        IF num_rows = 1 THEN
		  raise notice 'Insert richiesta_pag_info_pagamento per ide % OK .',v_ide_richiesta_pag;
          raise LOG 'Insert richiesta_pag_info_pagamento per ide % OK .',v_ide_richiesta_pag;
          v_return = 1;
        else
          raise notice 'Insert richiesta_pag_info_pagamento per ide % NON OK .',v_ide_richiesta_pag;
          raise LOG 'Insert richiesta_pag_info_pagamento per ide % NON OK .',v_ide_richiesta_pag;
          v_return = 0;
         raise EXCEPTION 'Insert su richiesta_pag_info_pagamento NON OK!!'; 
         ROLLBACK;
        end if;  
      else         
         raise notice 'Update richiesta_pag_stato_procedura per ide % NON OK! - Stato APP rimane aperto. Exit.',v_ide_richiesta_pag;
         raise LOG 'Update richiesta_pag_stato_procedura per ide % NON OK! - Stato APP rimane aperto. Exit.',v_ide_richiesta_pag;
         v_return = 0;
        raise EXCEPTION 'Update su richiesta_pag_stato_procedura NON OK!!'; 
        ROLLBACK;
      end if;  
    end loop;

       
            
EXCEPTION
WHEN no_data_found then 
  raise EXCEPTION 'NESSUN DATO TROVATO!!'; 
  ROLLBACK;      
WHEN others THEN
  Raise notice 'Errore : %', SQLERRM;
END
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;

GRANT EXECUTE ON FUNCTION sp_updrichpag() TO :userapp,:userappj WITH GRANT OPTION;

CREATE OR REPLACE FUNCTION sp_registra_intermediari (
  rigacsv varchar
)
RETURNS varchar AS
$body$
DECLARE
     v_rigaCSV     VARCHAR(800) := null;
     puntoErrore   VARCHAR(350) := null;
     msgErrore     VARCHAR(800) := null;
     msgErr        VARCHAR(800) := null;
     codErrore     INTEGER;
     var_cod_intermediario  CHAR(12) := null;
	 var_ide_sogg_promotore NUMERIC := null;
			 --   var_org_unit_id NUMBER;
	var_errore VARCHAR(300);
	 -- Variabili OUTPUT
	 outCodIntermediario VARCHAR(100) := NULL;
	 -- Variabili INPUT
     inCodFiscale        VARCHAR(16)  := NULL;	 
     inDesDenominazione  VARCHAR(200) := NULL;
     inDesIndirizzo      VARCHAR(250) := NULL;
     inCodComune   		 CHAR(4) := NULL;
     inCodComuneCap  	 CHAR(5) := NULL;
	-- inDesCognomeRappr 	 VARCHAR(50)  := NULL;
	-- inDesNomeRappr 	 VARCHAR(50)  := NULL;	  
	-- inDatNascRappr 	 VARCHAR(10)   := NULL;
	-- inCodFiscRappr 	 VARCHAR(16)  := NULL;
	-- inComuneNascRappr   CHAR(4) := NULL;
	-- inNazNascitaRappr   CHAR(4)  := NULL;
	-- inDataDelega 		 VARCHAR(10)   := NULL;
	-- inDesDelega 		 VARCHAR(250) := NULL;
     inCodApplicazione   VARCHAR(10)  := NULL;
     inTipoServ          VARCHAR(50)  := NULL;
     inTipoInt           VARCHAR(10)  := NULL;
     inPrefix   		 CHAR(1) := NULL;
     v_data_inizio       date := NOW()::date;
     v_timestamp         timestamp(6) := now();
     --
	 
     result INTEGER;
     position1 INTEGER;
     position2 INTEGER;
     numSeparators INTEGER;
     fase VARCHAR(2000):='INIZIO ( ';
  BEGIN
      v_rigaCSV := rigaCSV;
      codErrore:=1;
      fase:='numSeparators ';
       numSeparators:=LENGTH(v_rigaCSV)-LENGTH(REPLACE(v_rigaCSV,';',''));
       raise notice 'numero separatori %', numSeparators;
       --
       IF numSeparators=8 THEN
          --
          
          fase:='denominazione ';
          position1:=1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDesDenominazione:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDesDenominazione = '' then 
             inDesDenominazione := null ;
          end if;
          raise notice 'denominazione:  %', inDesDenominazione;
          --
		  fase:='codFiscale ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodFiscale:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodFiscale = '' then 
             inCodFiscale := null ;
          end if;
          raise notice 'codice fiscale:  %', inCodFiscale;
          --
          fase:='indirizzo ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inDesIndirizzo:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inDesIndirizzo = '' then 
             inDesIndirizzo := null ;
          end if;
          raise notice 'indirizzo:  %', inDesIndirizzo;          
          --
          fase:='codComune ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodComune:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodComune = '' then 
             inCodComune := null ;
          end if;
          raise notice 'comune:  %', inCodComune;     
          --
          fase:='cap ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodComuneCap:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodComuneCap = '' then 
             inCodComuneCap := null ;
          end if;
          raise notice 'cap:  %', inCodComuneCap;  
          --
          fase:='codApplicazione ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inCodApplicazione:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inCodApplicazione = '' then 
             inCodApplicazione := null ;
          end if;
          raise notice 'applicazione:  %', inCodApplicazione;
          
           --
		  fase:='tipo intermediario ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inTipoInt:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inTipoInt = '' then 
             inTipoInt := null ;
          end if;
          raise notice 'tipo intermediario:  %', inTipoInt;
		   --
		  fase:='tipo servizio ';
          position1:=position2+1;
          position2:=INSTR(v_rigaCSV,';',position1);
          inTipoServ:=SUBSTR(v_rigaCSV,position1,position2-position1);
          if inTipoServ = '' then 
             inTipoServ := null ;
          end if;
          raise notice 'tipo servizio:  %', inTipoServ;
          --
		  fase:='prefisso ';
          position1:=position2+1;
         -- position2:=INSTR(v_rigaCSV,';',position1);
          position2:=LENGTH(v_rigaCSV); 
          inPrefix:=SUBSTR(v_rigaCSV,position1,position2-position1+1);
          if inPrefix = '' then 
             inPrefix := null ;
          end if;
          raise notice 'prefisso:  %', inPrefix;
          --
          fase:='SP_REGISTRA_INTERMEDIARI chiamata';
          

				
          BEGIN
				   SELECT NEXTVAL('seq_intermediari')
				   INTO STRICT  var_ide_sogg_promotore
				   ;
				   SELECT lpad(var_ide_sogg_promotore::text,11,'0')
				   INTO STRICT var_cod_intermediario
				   ;
				   raise notice 'cod int: %', var_cod_intermediario;
				   raise notice 'trim di cod int: %', trim(var_cod_intermediario);
				   
				   var_errore := 'Impatto su 4 tabelle.' || CHR(13);
				   -- inserimento su TAB_INTERMEDIARI
                   INSERT INTO TAB_INTERMEDIARI (	COD_INTERMEDIARIO, 	COD_TIPO_INTERMEDIARIO, DES_INTERMEDIARIO,DAT_INIZIO, DTT_TMST, FLG_CLASSIFICAZIONE_STANDARD, DES_INDIRIZZO_RECAPITO,
													COD_CAP_RECAPITO, COD_COMUNE_RECAPITO,COD_FISCALE)
				   VALUES (var_cod_intermediario,inTipoInt,inDesDenominazione,v_data_inizio,v_timestamp,'N',inDesIndirizzo,inCodComuneCap,inCodComune,inCodFiscale);
				   raise notice 'Insert su TAB_INTERMEDIARI OK.';
				   var_errore := var_errore  || '1 - Insert su TAB_INTERMEDIARI OK ' || CHR(13);
				   -- inserimento su TAB_COMUNE_INTERMEDIARI
				   INSERT INTO TAB_COMUNE_INTERMEDIARI (COD_INTERMEDIARIO, 	COD_COMUNE, DAT_INIZIO, DTT_TMST)
				   VALUES (var_cod_intermediario,inCodComune,v_data_inizio,v_timestamp);
				   raise notice 'Insert su TAB_COMUNE_INTERMEDIARI OK.';
				   var_errore := var_errore  || '2 - Insert su TAB_COMUNE_INTERMEDIARI OK ' || CHR(13);	   
                   
					/*
				-- inserimento su CONV_SOGGETTO_PROMOTORE
				   INSERT INTO CONV_SOGGETTO_PROMOTORE (IDE_SOGGETTO_PROMOTORE,COD_FISCALE,DES_DENOMINAZIONE,DES_INDIRIZZO_SEDE,COD_COMUNE_SEDE,COD_CAP_SEDE,
														DES_COGNOME_RAPPR,DES_NOME_RAPPR,DAT_NASCITA_RAPPR,COD_FISCALE_RAPPR,COD_COMUNE_NAS_RAPPR,
														COD_NAZIONE_NAS_RAPPR,COD_INTERMEDIARIO,DAT_DELEGA,DES_DELEGA,DAT_INIZIO,COD_APPLICAZIONE,
														COD_USERAGG,DTT_TMST
														)
				   VALUES (NEXTVAL('seq_conv_soggetto_promotore'),inCodFiscale,inDesDenominazione,inDesIndirizzo,inCodComune,inCodComuneCap,inDesCognomeRappr,inDesNomeRappr,to_date(inDatNascRappr,'dd/mm/yyyy'),
						   inCodFiscRappr,inComuneNascRappr,inNazNascitaRappr,trim(var_cod_intermediario),to_date(inDataDelega,'dd/mm/yyyy'),inDesDelega,NOW(),
						   inCodApplicazione,'SYSTEM',NOW() 
						   );
				   raise notice 'Insert su CONV_SOGGETTO_PROMOTORE OK.';               
				   var_errore := var_errore  || '3 - Insert su CONV_SOGGETTO_PROMOTORE OK ' || CHR(13);
				   */
				   /*
				   -- inserimento su APPL_INT
				   INSERT INTO APPL_INT(IDE_APPL_INT,COD_APPLICAZIONE,COD_INTERMEDIARIO,COD_USERAGG,DTT_TMSTAGG)
				   VALUES (NEXTVAL('SEQ_APPL_INT'), inCodApplicazione,trim(var_cod_intermediario),'SYSTEM',NOW());
				   raise notice 'Insert su APPL_INT OK.'; 
				   var_errore := var_errore  || '4 - Insert su APPL_INT OK ' || CHR(13);
				   
				    -- inserimento su APPL_INT_TIPOSERV
                    INSERT INTO APPL_INT_TIPOSERV(IDE_APPL_INT,COD_TIPOLOGIA_SERVIZIO,COD_USERINS,DTT_TMSTINS,COD_USERAGG,DTT_TMSTAGG)
                    VALUES (CURRVAL('SEQ_APPL_INT'), inTipoServ,'SYSTEM',NOW(),'SYSTEM',NOW());
                    raise notice 'Insert su APPL_INT_TIPOSERV OK.';
                    var_errore := var_errore  || '5 - Insert su APPL_INT_TIPOSERV OK '||CHR(13);
                    */
				   outCodIntermediario := trim(var_cod_intermediario);
				   raise notice 'Ritorno output --> %' ,outCodIntermediario ;      
				   var_errore := var_errore  || ' COMMIT.' || CHR(13);
						--  COMMIT;
						  
				   RETURN outCodIntermediario;


				   
			  EXCEPTION
				WHEN OTHERS THEN
				 Raise notice 'Errore : %', SQLERRM;
				 Raise notice 'Tipo : %', var_errore;
				 Raise notice 'ROLLBACK';
				-- ROLLBACK;
				 RETURN 'Errore : ' || SQLERRM;
          END;                                            
         fase:='SP_REGISTRA_INTERMEDIARI ritorno';
         msgErrore := 'Ritorno : ' || msgErrore;
	  	 Raise notice 'Errore : %', msgErrore;
		 Raise notice 'Il codice intermediario genrato per l''azienda % , C.F. - %,  è : %' ,inDesDenominazione,inCodFiscale,outCodIntermediario;
--		 Raise debug ''whatever you want % '', aVariable;
       ELSE
           fase:='numSeparatorsNOT8 ';
		   msgErrore:=fase||') Riga del file('|| v_rigaCSV ||') non valida per numero campi ('||numSeparators||') diverso da quelli attesi (8)';
 --          RAISE notice 'Errore: %', msgErrore USING ERRCODE = '-20001';
       END IF;
       RETURN outCodIntermediario;
  exception
    when others then
       msgErrore := 'SP_REGISTRA_INTERMEDIARI ritorno ERRORE - '||fase||' - ERRORE:'||sqlerrm;
      -- RAISE notice 'Errore: %', msgErrore USING ERRCODE = '-20000';
      RETURN 'ERRORE:'||sqlerrm;
  END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;


GRANT EXECUTE ON FUNCTION SP_REGISTRA_INTERMEDIARI(varchar) TO :userapp,:userappj WITH GRANT OPTION;

-- 20211117

CREATE OR REPLACE FUNCTION get_wbe (
  in_ideelenco numeric
)
RETURNS varchar AS
$body$
DECLARE
  var_WBE  VARCHAR(22) := '';
  var_cod_Regione VARCHAR(2) := '';
  var_cod_Comune VARCHAR(4) := '';
  var_WBE_1 CONSTANT VARCHAR(17) := '178N.FSE.WP3.'; 
  var_sogg_prop CONSTANT CHAR(3) := 'CP.'; -- PAI   SOGGETTO PROPONENTE
  var_sogg_ospi CONSTANT CHAR(3) := 'CO.'; -- TUT   SOGGETTO OSPITANTE
  var_tipo_inc CHAR(3) ;
BEGIN

   SELECT cod_tipo_incentivo 
   INTO STRICT var_tipo_inc
   FROM elenco
   WHERE ide_elenco = in_IdeElenco;
   
   IF var_tipo_inc = 'PAI' THEN
     SELECT
       CASE 
         WHEN tr.cod_regione = '01' THEN 'PI'
         WHEN tr.cod_regione = '02' THEN 'VA'
         WHEN tr.cod_regione = '03' THEN 'LO'
         WHEN tr.cod_regione = '04' THEN 'TRT'
         WHEN tr.cod_regione = '05' THEN 'VE'
         WHEN tr.cod_regione = '06' THEN 'FR'
         WHEN tr.cod_regione = '07' THEN 'LI'
         WHEN tr.cod_regione = '08' THEN 'EM'
         WHEN tr.cod_regione = '09' THEN 'TO'
         WHEN tr.cod_regione = '11' THEN 'UM'
         WHEN tr.cod_regione = '12' THEN 'LA'
         WHEN tr.cod_regione = '13' THEN 'AB'
         WHEN tr.cod_regione = '14' THEN 'MO'
         WHEN tr.cod_regione = '20' THEN 'SA'
         WHEN tr.cod_regione = '17' THEN 'BA'
         WHEN tr.cod_regione = '18' THEN 'CL'
         WHEN tr.cod_regione = '15' THEN 'CA'
         WHEN tr.cod_regione = '16' THEN 'PU'
         WHEN tr.cod_regione = '19' THEN 'SI'
         ELSE 'XX'
       END  regio  INTO STRICT var_cod_Regione
      FROM  tab_regioni tr, tab_province tp, tab_comuni tc, tab_intermediari ti, elenco_destinatario ed
      WHERE tr.cod_regione = tp.cod_regione
      AND   tp.cod_provincia = tc.cod_provincia
      AND   tc.cod_comune = ti.cod_comune_recapito
      AND   ti.cod_intermediario = ed.cod_intermediario_pag
      AND   ed.ide_elenco = in_IdeElenco;
      
      
      RAISE DEBUG 'valore: %', var_WBE_1||var_sogg_prop||var_cod_Regione;
      
      var_WBE := var_WBE_1||var_sogg_prop||var_cod_Regione;
      
      IF var_cod_Regione = 'XX' THEN
         var_WBE = 'WBE Errata';
      END IF;
      
   ELSIF var_tipo_inc = 'TUT' THEN
     BEGIN   
      SELECT 
        -- SEDE OPERATIVA
       DISTINCT(
        CASE 
         WHEN tr.cod_regione = '01' THEN 'PI'
         WHEN tr.cod_regione = '02' THEN 'VA'
         WHEN tr.cod_regione = '03' THEN 'LO'
         WHEN tr.cod_regione = '04' THEN 'TRT'
         WHEN tr.cod_regione = '05' THEN 'VE'
         WHEN tr.cod_regione = '06' THEN 'FR'
         WHEN tr.cod_regione = '07' THEN 'LI'
         WHEN tr.cod_regione = '08' THEN 'EM'
         WHEN tr.cod_regione = '09' THEN 'TO'
         WHEN tr.cod_regione = '11' THEN 'UM'
         WHEN tr.cod_regione = '12' THEN 'LA'
         WHEN tr.cod_regione = '13' THEN 'AB'
         WHEN tr.cod_regione = '14' THEN 'MO'
         WHEN tr.cod_regione = '20' THEN 'SA'
         WHEN tr.cod_regione = '17' THEN 'BA'
         WHEN tr.cod_regione = '18' THEN 'CL'
         WHEN tr.cod_regione = '15' THEN 'CA'
         WHEN tr.cod_regione = '16' THEN 'PU'
         WHEN tr.cod_regione = '19' THEN 'SI'
         WHEN tr.cod_regione = '' OR tr.cod_regione IS NULL THEN 'ES' 	
        ELSE 'XX'	   
        END ) regio  INTO STRICT var_cod_Regione
      FROM  tab_regioni tr,tab_province tp, tab_comuni tc, intervento_sede iss, intervento_attore ia,modulo_intervento_attore mia,elenco_modulo_pagamento emp
      WHERE tr.cod_regione = tp.cod_regione
      AND   tp.cod_provincia = tc.cod_provincia
      AND   tc.cod_comune = iss.cod_comune
      AND   iss.ide_intervento = ia.ide_intervento
      AND   ia.prg_intervento_attore = mia.prg_intervento_attore
      AND   mia.ide_modulo_pagamento = emp.ide_modulo_pagamento
      AND   emp.ide_elenco = in_IdeElenco;
      
     var_WBE := var_WBE_1||var_sogg_ospi||var_cod_Regione;
      
      IF var_cod_Regione = 'XX' THEN
         var_WBE = 'WBE Errata';
      END IF;
            
    EXCEPTION
        WHEN no_data_found THEN
           var_WBE := var_WBE_1||var_sogg_ospi||'ES';				 
          
   RAISE DEBUG 'valore: %', var_WBE_1||var_sogg_ospi||var_cod_Regione;
    END; 
    END IF;
  
  
  RETURN var_WBE;
  
 EXCEPTION
      WHEN too_many_rows THEN 
        SELECT dsl.cod_comune INTO STRICT var_cod_Comune
        FROM   elenco_destinatario ed,dl_sede_legale dsl
        WHERE  ed.ide_datore_lavoro_pag = dsl.ide_datore_lavoro
        AND    ed.ide_elenco = in_IdeElenco;
        IF NOT FOUND THEN
 			SELECT 
                    -- SEDE LEGALE
                   CASE 
					 WHEN tr.cod_regione = '01' THEN 'PI'
					 WHEN tr.cod_regione = '02' THEN 'VA'
					 WHEN tr.cod_regione = '03' THEN 'LO'
					 WHEN tr.cod_regione = '04' THEN 'TRT'
					 WHEN tr.cod_regione = '05' THEN 'VE'
					 WHEN tr.cod_regione = '06' THEN 'FR'
					 WHEN tr.cod_regione = '07' THEN 'LI'
					 WHEN tr.cod_regione = '08' THEN 'EM'
					 WHEN tr.cod_regione = '09' THEN 'TO'
					 WHEN tr.cod_regione = '11' THEN 'UM'
					 WHEN tr.cod_regione = '12' THEN 'LA'
					 WHEN tr.cod_regione = '13' THEN 'AB'
					 WHEN tr.cod_regione = '14' THEN 'MO'
					 WHEN tr.cod_regione = '20' THEN 'SA'
					 WHEN tr.cod_regione = '17' THEN 'BA'
					 WHEN tr.cod_regione = '18' THEN 'CL'
					 WHEN tr.cod_regione = '15' THEN 'CA'
					 WHEN tr.cod_regione = '16' THEN 'PU'
					 WHEN tr.cod_regione = '19' THEN 'SI' 
                     WHEN tr.cod_regione = '' OR tr.cod_regione IS NULL THEN 'ES' 
                     ELSE 'XX'				 
                    END regio, dsl.cod_comune  INTO STRICT var_cod_Regione , var_cod_Comune
                  FROM  tab_regioni tr,tab_province tp, tab_comuni tc,dl_sede_legale dsl ,elenco_destinatario ed
                  WHERE tr.cod_regione = tp.cod_regione
                  AND   tp.cod_provincia = tc.cod_provincia
                  AND   tc.cod_comune = dsl.cod_comune
                  AND   dsl.ide_datore_lavoro = ed.ide_datore_lavoro_pag
                  AND   ed.ide_elenco = in_IdeElenco;
         ELSE
              var_cod_Comune := '';
         END IF;         
                   IF var_cod_Comune = '' OR var_cod_Comune IS NULL THEN 
                       var_WBE := var_WBE_1||var_sogg_ospi||'ES';
                   ELSIF var_cod_Comune = 'XX'  THEN 
                         var_WBE := 'WBE Errata';     				 
                   ELSE 
                       var_WBE := var_WBE_1||var_sogg_ospi||var_cod_Regione;
                   END IF;
    
      RAISE DEBUG 'valore: %', var_WBE_1||var_sogg_ospi||var_cod_Regione;
	 WHEN no_data_found THEN    
        var_WBE := 'Nessun Ide Elenco trovato .';
       
   RETURN var_WBE;
   
END;
$body$
LANGUAGE 'plpgsql'
VOLATILE
CALLED ON NULL INPUT
SECURITY INVOKER
COST 100;


GRANT EXECUTE
  ON FUNCTION get_wbe(in_ideelenco numeric) TO :userapp,:userappj WITH GRANT OPTION;  
  
  
-- 2021118 funzione di pasquale

CREATE OR REPLACE FUNCTION fnc_registra_dati_domanda_nulla_osta (
  rigacsv varchar
)
RETURNS void AS
$body$
declare
  NUM_CAMPI_INPUT integer := 35;
  valoriInput varchar[];
  valore varchar;
     
  idDatoreLavoroEsistente integer:=null;
  idSedeLavoroEsistente integer:=null;
     
  -- Variabili di input contenute nella riga CSV
  codFiscaleAzienda          varchar(16);
  pivaAzienda                varchar(11);
  denominazioneAzienda       varchar(100);
  codFormaGiuridicaAzienda   varchar(10);
  codAtecoAzienda            varchar(10);
  codCcnlAzienda             varchar(10);
  codImpresaProduttiva       varchar(3);
  importoMassimale           numeric(9,2);
  dataDomanda                date;
  flagAziendaPubblica        char(1);
  codUserInsAgg              varchar(40);
  codComuneSedeLegale        varchar(4);
  indirizzoSedeLegale        varchar(250);
  capSedeLegale              varchar(5);
  codComuneSedeLavoro        varchar(4);
  indirizzoSedeLavoro        varchar(250);
  capSedeLavoro              varchar(5);     
  codFiscalelavoratore       varchar(16);
  cognomeLavoratore          varchar(50);
  nomeLavoratore             varchar(50);  
  dataNascitaLavoratore      date;
  indirizzoResLavoratore     varchar(100);
  capResidenzaLavoratore     varchar(5);
  codComuneResLavoratore     varchar(4);
  codGenereLavoratore        varchar(1);
  codNazioneNascLavoratore   varchar(4);
  codCittadinanzaLavoratore  varchar(10);
  codComuneNascLavoratore    varchar(4);
  codStatusStraniero         varchar(10);
  codDocumentoStraniero      varchar(15);  
  impMax                     varchar(15);  
  codMotivoPermStraniero     varchar(10);  
  dataInizioPermesso         date;
  dataScadenzaPermesso       date;
  codApplicazione            varchar(20);
  codFiscalSoggProm          varchar(16);
  
  
  --
  idDatoreLavoro  integer;
  codiceProgressivoSedeDL varchar(20);
  idProgressivoSedeDL integer;
  ideLavoratore integer;
  ideApplInt   integer;
  ideLavEnte   integer;
  codTipoServizio VARCHAR(20);
   
begin
  -- Controllo che la riga CSV di input sia presente
  if(rigacsv is null or (rigacsv is not null and length(trim(rigacsv))=0))then
     raise exception 'ERRORE! Occorre specificare la riga in formato CSV di input alla procedura.';
  end if;
        
  -- Verifico che il numero di campi passati in input corrisponda a quello atteso
  valoriInput = string_to_array(rigacsv, ';');    
  if(array_length(valoriInput, 1)!=NUM_CAMPI_INPUT)then
     raise exception 'ERRORE! Il numero di campi passato nella riga CSV di input alla procedura non è quello atteso.';
  end if;
  
  -- Elimino le virgolette (carattere ") iniziali e finali dai valori di input letti dalla riga e 
  -- presenti su ogni campo del tracciato CSV
  for i in array_lower(valoriInput, 1)..array_upper(valoriInput, 1)
  loop
      if(length(valoriInput[i])>=2)then
      		valoriInput[i] := substr(valoriInput[i], 2, length(valoriInput[i])-2);
      end if;
  end loop;
   
  -- Leggo tutti i parametri di input contenuti nella riga CSV
  begin
      codFiscaleAzienda         := valoriInput[1];
      pivaAzienda               := valoriInput[2];
      denominazioneAzienda      := valoriInput[3];
      codFormaGiuridicaAzienda  := valoriInput[4];
      codAtecoAzienda           := valoriInput[5];   
      codCcnlAzienda            := valoriInput[6];   
      codImpresaProduttiva      := valoriInput[7];    
      
      impMax                    := valoriInput[8];
--      importoMassimale          := to_number(valoriInput[8], '9999999.99');
      dataDomanda               := to_date(valoriInput[9], 'dd/mm/yyyy');
      flagAziendaPubblica       := valoriInput[10]::char(1);
      codUserInsAgg             := valoriInput[11];
      codComuneSedeLegale       := valoriInput[12];
      indirizzoSedeLegale       := valoriInput[13];
      capSedeLegale             := valoriInput[14];
      codComuneSedeLavoro       := valoriInput[15];
      indirizzoSedeLavoro       := valoriInput[16];
      capSedeLavoro             := valoriInput[17];
      
      codFiscalelavoratore      := valoriInput[18];
      cognomeLavoratore         := valoriInput[19];
      nomeLavoratore            := valoriInput[20]; 
      dataNascitaLavoratore     := to_date(valoriInput[21], 'dd/mm/yyy');
      indirizzoResLavoratore    := valoriInput[22];
      capResidenzaLavoratore    := valoriInput[23];
      codComuneResLavoratore    := valoriInput[24];
      codGenereLavoratore       := valoriInput[25];
      codNazioneNascLavoratore  := valoriInput[26];
      codCittadinanzaLavoratore := valoriInput[27];
      codComuneNascLavoratore   := valoriInput[28];
      
      codStatusStraniero        := valoriInput[29];
      codDocumentoStraniero     := valoriInput[30]; 
      codMotivoPermStraniero    := valoriInput[31]; 
      dataInizioPermesso        := to_date(valoriInput[32], 'dd/mm/yyyy');
      dataScadenzaPermesso      := to_date(valoriInput[33], 'dd/mm/yyyy');
      codApplicazione           := valoriInput[34]; 
      codFiscalSoggProm         := valoriInput[35]; 
      
      if codCcnlAzienda = '' or codCcnlAzienda = ' ' then
         codCcnlAzienda := null;
      end if;
      
      if codComuneResLavoratore = '' or codComuneResLavoratore = ' ' then
         codComuneResLavoratore := null;
      end if;
      
      if codComuneNascLavoratore = '' or codComuneNascLavoratore = ' ' then
         codComuneNascLavoratore := null;
      end if;
      
      if codFormaGiuridicaAzienda = '' or codFormaGiuridicaAzienda = ' ' then
         codFormaGiuridicaAzienda := null;
      end if;
      
      
      
      if coalesce(TRIM(impMax), '') = '' THEN
          importoMassimale := null ;
      else 
          importoMassimale := to_number(impMax, '9999999.99');
      end if;
         
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di lettura delle variabili di input presenti nella riga CSV della procedura fnc_registra_dati_domanda_nulla_osta: % %', SQLERRM, SQLSTATE;
  end;
  
  
  
  --
  -- Verifico se l'azienda esiste già censita in DATORE_LAVORE ricercando 
  -- il suo codice fiscale
  --
  begin
    select dl.ide_datore_lavoro
    into idDatoreLavoroEsistente
    from datore_lavoro as dl
    where dl.cod_fiscale_azienda = codFiscaleAzienda;
    
    select a.ide_appl_int
    into ideApplInt
    from conv_soggetto_promotore as c, appl_int as a
    where c.cod_fiscale = codFiscalSoggProm
    and   c.cod_intermediario = a.cod_intermediario
    and   a.cod_applicazione = codApplicazione ;
    
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di verifica dell''esistenza dell''azienda in DATORE_LAVORO: % %', SQLERRM, SQLSTATE;
  end;
   
  -- 
  -- Se l'azienda ospitante è già censita in PLUS aggiungo solo la sede di lavoro (sede del tirocinio),
  -- altrimenti inserisco in datore lavoro, in sede legale e sede di lavoro.
  --
  if(idDatoreLavoroEsistente is null)then
    -- 
    -- Leggo l'ID del nuovo datore di lavoro dallla relativa sequence
    -- 
    begin
      select nextval('seq_dl')
      into strict idDatoreLavoro;
        
      exception
       when others then
          raise exception 'ERRORE! Errore in fase di lettura della sequence seq_dl: % %', SQLERRM, SQLSTATE;
    end;    
                  
    -- 
    -- Inserimento in DATORE_LAVORO
    -- 
    begin
      insert into datore_lavoro
      (ide_datore_lavoro, cod_fiscale_azienda, cod_partita_iva, des_denominazione_azienda,
      cod_formagiuridica, cod_ateco, cod_tipoazienda, cod_ccnl,
      cod_impresa_prod, flg_cancellazione, imp_massimale,   dat_domanda,   
      flg_pubblico, cod_useragg, dtt_tmst )
      values 
      (idDatoreLavoro, codFiscaleAzienda, pivaAzienda, denominazioneAzienda,   
      codFormaGiuridicaAzienda, codAtecoAzienda, NULL, codCcnlAzienda, 
      codImpresaProduttiva, 'N', importoMassimale, dataDomanda, 
      flagAziendaPubblica, codUserInsAgg, now());  
        
      exception
       when others then
          raise exception 'ERRORE! Errore in fase di inserimento nella tabella DATORE_LAVORO: % %', SQLERRM, SQLSTATE;
    end;      
   
           
    -- 
    -- Inserimento in DL_SEDE_LEGALE
    --     
    begin
      insert into dl_sede_legale
      ( ide_datore_lavoro, cod_comune, des_indirizzo, cod_cap, des_telefono, 
        des_fax, des_email, cod_nazione_estera, des_citta_estera, cod_useragg, dtt_tmst )
      values
      ( idDatoreLavoro, codComuneSedeLegale, indirizzoSedeLegale, capSedeLegale, NULL, 
        NULL, NULL, NULL, NULL, codUserInsAgg, now());
        
      exception
       when others then
          raise exception 'ERRORE! Errore in fase di inserimento nella tabella DL_SEDE_LEGALE: % %', SQLERRM, SQLSTATE;
    end;
    
 
  end if;
  
  --
  -- Leggo il progressivo da assegnare alla sede.
  -- Se l'azienda non esisteva allora il progressivo è sicuramente 1,
  -- altrimento lo calcolo attraverso una select.
  --
  if(idDatoreLavoroEsistente is null)then
     codiceProgressivoSedeDL := '1';
  else
     select (MAX(sedelav.cod_sede_lavoro::int)+1)::varchar
     into strict codiceProgressivoSedeDL
     from dl_sedi_lavoro sedelav  
     where sedelav.ide_datore_lavoro = idDatoreLavoroEsistente;
  end if;
    
  -- 
  -- Inserimento in DL_SEDI_LAVORO
  --     
  if(idDatoreLavoroEsistente is not null)then
     idDatoreLavoro := idDatoreLavoroEsistente;
  end if;
  
  begin

   select  d.ide_datore_lavoro
   into    idSedeLavoroEsistente
   from    dl_sedi_lavoro d
   where   d.ide_datore_lavoro = idDatoreLavoro
   and     d.cod_comune = codComuneSedeLavoro
   and     TRIM(LOWER(d.des_indirizzo)) = TRIM(LOWER(indirizzoSedeLavoro));
   
   if idSedeLavoroEsistente is null then
    insert into dl_sedi_lavoro
    ( ide_datore_lavoro, cod_sede_lavoro, cod_comune, des_indirizzo, cod_cap, des_telefono, 
      des_fax, des_email, cod_nazione_estera, des_citta_estera, cod_useragg, dtt_tmst )
    values
    ( idDatoreLavoro, codiceProgressivoSedeDL, codComuneSedeLavoro, indirizzoSedeLavoro, capSedeLavoro, NULL, 
      NULL, NULL, NULL, NULL, codUserInsAgg, now());   
   end if;     
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di inserimento nella tabella DL_SEDI_LAVORO: % %', SQLERRM, SQLSTATE;
  end;
    
  --
  -- Ottengo l'ID del nuovo lavoratore associato al tirocinante dalla sequence relativa
  -- 
  begin
    select nextval('seq_lavoratore')
    into strict ideLavoratore; 
        
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di lettura dalla sequence seq_lavoratore: % %', SQLERRM, SQLSTATE;
  end;    
                      
  --
  -- Inserimento nella tabella LAVORATORE dei dati anagrafici del tirocinante
  --
  begin
   insert into lavoratore
    ( ide_lavoratore, cod_fiscale_lavoratore, des_cognome, des_nome, dat_nascita, des_indirizzo_residenza,
    cod_cap_residenza, des_localita_residenza, des_indirizzo_domicilio, cod_cap_domicilio,
    des_localita_domicilio, des_presso_domicilio, cod_sesso, cod_statocivile, cod_nazione_nascita,
    cod_cittadinanza, cod_comune_nascita, cod_comune_domicilio, cod_comune_residenza, dat_domanda,
    flg_cancellazione, cod_userins, dtt_tmstins, cod_useragg, dtt_tmst )
   values
    ( ideLavoratore, codFiscalelavoratore, cognomeLavoratore, nomeLavoratore, dataNascitaLavoratore, indirizzoResLavoratore,
    capResidenzaLavoratore, NULL, indirizzoResLavoratore, capResidenzaLavoratore,
    NULL, NULL, codGenereLavoratore, NULL, codNazioneNascLavoratore,
    codCittadinanzaLavoratore, codComuneNascLavoratore, codComuneResLavoratore, codComuneResLavoratore, dataDomanda,
    'N', codUserInsAgg, now(), codUserInsAgg, now() );
          
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di inserimento nella tabella LAVORATORE: % %', SQLERRM, SQLSTATE;
  end;    

  --
  -- Inserimento nella tabella LAV_TIPOSERV
  --
  begin
   
   select d.cod_tipologia_servizio into codTipoServizio from dec_tipologia_servizio d where d.cod_applicazione = codApplicazione;
  
   insert into lav_tiposerv
    ( ide_lavoratore, cod_tipologia_servizio, cod_useragg, dtt_tmst )
   values
    ( ideLavoratore, codTipoServizio , codUserInsAgg, now() );
          
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di inserimento nella tabella LAV_TIPOSERV: % %', SQLERRM, SQLSTATE;
  end;    

  begin
      select nextval('seq_lav_ente')
      into strict ideLavEnte;
        
      exception
       when others then
          raise exception 'ERRORE! Errore in fase di lettura della sequence seq_lav_ente: % %', SQLERRM, SQLSTATE;
    end;   
  --
  -- Inserimento nella tabella LAV_ENTE
  --
  begin
   insert into lav_ente
    ( ide_lav_ente , ide_lavoratore, ide_appl_int, dtt_ini, cod_userins, dtt_tmstins, cod_useragg, dtt_tmstagg )
   values
    ( ideLavEnte, ideLavoratore, ideApplInt, now() , codUserInsAgg, now(), codUserInsAgg, now() );
          
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di inserimento nella tabella LAV_ENTE: % %', SQLERRM, SQLSTATE;
  end;  
    
  --
  -- Inserimento nella tabella SOGGETTO_PROFILO_APPLICAZIONE
  --
  begin
  
    INSERT INTO soggetto_profilo_applicazione
       (ide_sogg_prof_app, cod_tipo_anagrafica, ide_soggetto, cod_codiceprofilo, cod_applicazione, cod_useragg, dtt_tmst)
    VALUES 
       (nextval('seq_soggetto_profilo_applicazi'), 'PF', ideLavoratore, codApplicazione||'.TIROCINANTE', codApplicazione, codUserInsAgg, now());

          
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di inserimento nella tabella SOGGETTO_PROFILO_APPLICAZIONE: % %', SQLERRM, SQLSTATE;
  end;    
    
  --
  -- Inserimento nella tabella LAV_STRANIERO dei dati relativi al
  -- permesso di soggiorno del tirocinante
  --  
  begin
    insert into lav_straniero
    ( ide_lavoratore, cod_status_straniero, cod_documento, cod_motivo, 
      dat_scadenza_permesso, dat_ultima_iscrizione, cod_useragg, dtt_tmst )
    values 
    ( ideLavoratore, codStatusStraniero, codDocumentoStraniero, codMotivoPermStraniero, 
      dataScadenzaPermesso, dataInizioPermesso, codUserInsAgg, now() );  
      
    exception
     when others then
        raise exception 'ERRORE! Errore in fase di inserimento nella tabella LAV_STRANIERO: % %', SQLERRM, SQLSTATE;  
  end;
  
  exception
     when others then
        raise exception 'ERRORE! Errore in fase di esecuzione della procedura fnc_registra_dati_domanda_nulla_osta: % %', SQLERRM, SQLSTATE;
  
end;
$body$
LANGUAGE 'plpgsql';


GRANT EXECUTE
  ON FUNCTION fnc_registra_dati_domanda_nulla_osta (rigacsv varchar) TO :userapp,:userappj WITH GRANT OPTION;  
    
