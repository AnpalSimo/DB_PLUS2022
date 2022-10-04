
\echo 'executing script 803_ddl.create.view.Sill.sql';

\c :dbName :usersill

CREATE OR REPLACE VIEW V_APPL_INT
(
   COD_APPLICAZIONE,
   COD_INTERMEDIARIO,
   DES_INTERMEDIARIO
)
AS
     SELECT   COD_APPLICAZIONE, ti.COD_INTERMEDIARIO, DES_INTERMEDIARIO
       FROM   tab_intermediari ti, :userprof.appl_int aipr
      WHERE   ti.cod_intermediario = aipr.COD_INTERMEDIARIO
   ORDER BY   COD_APPLICAZIONE, COD_INTERMEDIARIO;

   
   
CREATE OR REPLACE VIEW TIROCINIO
(
   PRG_TIROCINIO,
   DAT_INIZIO_TIROCINIO,
   PRG_CONVENZIONE,
   IDE_LAVORATORE,
   IDE_DATORE_LAVORO,
   COD_SEDE_LAVORO,
   DAT_FINE_TIROCINIO,
   NUM_MESI_TIROCINIO,
   DAT_STIPULA,
   DES_COGNOME_TUTOR_PROM,
   DES_NOME_TUTOR_PROM,
   DES_COGNOME_TUTOR_DL,
   DES_NOME_TUTOR_DL,
   TXT_OBIETTIVI,
   TXT_FACILITAZIONI,
   DES_COMPAGNIA_ASSICURAZ,
   IDE_POSIZIONE_INAIL,
   IDE_POS_RESPONSAB_CIV,
   DES_ORARIO_ACCESSO_SEDE,
   COD_USERAGG,
   DTT_TMST,
   COD_TIPO_TIROCINIO,
   COD_MOTIVO_CESSAZIONE
)
AS
   SELECT   DISTINCT
            i.ide_intervento AS prg_tirocinio,
            i.dat_inizio AS dat_inizio_tirocinio,
            ic.prg_convenzione AS prg_convenzione,
            ia.cod_attore::numeric AS ide_lavoratore,
            c.ide_datore_lavoro AS ide_datore_lavoro,
            s.prg_sede AS cod_sede_lavoro,
            fn_get_data_fine_effettiva (i.ide_intervento)
               AS dat_fine_tirocinio,
			CASE WHEN 
				idt.num_mesi_tirocinio is null 
			THEN 
				TRUNC(EXTRACT(year FROM age(i.dat_fine, i.dat_inizio))*12 + EXTRACT(month FROM age(i.dat_fine, i.dat_inizio)))
			ELSE 
				idt.num_mesi_tirocinio 
			END
			AS num_mesi_tirocinio,
            
            i.dat_stipula AS dat_stipula,
            
			CASE WHEN 
				idt.des_cognome_tutor_prom is null 
			THEN 
				' ___________________ ' 
			ELSE 
				idt.des_cognome_tutor_prom 
			END
			AS des_cognome_tutor_prom,
			
			CASE WHEN 
				idt.des_nome_tutor_prom is null 
			THEN 
				' ___________________ ' 
			ELSE 
				idt.des_nome_tutor_prom 
			END
			AS des_nome_tutor_prom,
			
			CASE WHEN 
				idt.des_cognome_tutor_az is null 
			THEN 
				' ___________________ ' 
			ELSE 
				idt.des_cognome_tutor_az 
			END
			AS des_cognome_tutor_dl,
			
			CASE WHEN 
				idt.des_nome_tutor_az is null 
			THEN 
				' ___________________ ' 
			ELSE 
				idt.des_nome_tutor_az 
			END
			AS des_nome_tutor_dl,			
            o.txt_obiettivi AS txt_obiettivi,
            o.txt_facilitazioni AS txt_facilitazioni,
            iass.des_ente_assicurativo AS des_compagnia_assicuraz,
            iass.num_posizione_assicurativa AS ide_posizione_inail,
            iass.des_tipo_assicurazione AS ide_pos_responsab_civ,			
			CASE WHEN 
				idt.des_orario_accesso_sede is null 
			THEN 
				': ____________________________________________________ '
			ELSE 
				idt.des_orario_accesso_sede 
			END
			AS des_orario_accesso_sede,
            'VIEW' AS cod_useragg,
            NOW() AS dtt_tmst,
            st.des_tipo_intervento AS cod_tipo_tirocinio,
            ' ' AS cod_motivo_cessazione
     FROM   intervento i 
			left outer join intervento_assicurazione iass
			on i.ide_intervento = iass.ide_intervento,
            intervento_obiettivi o,
            intervento_convenzione ic,
            intervento_sede s,
            convenzione c,                              ---
            intervento_dati_tirocinio idt,                                 ---
            intervento_attore ia,
            strint_tipo st,
            strint_attore sa
    WHERE   i.ide_tipo_intervento = st.ide_tipo_intervento
    AND     st.cod_area_intervento = 'STTIR'
    AND     o.ide_intervento = i.ide_intervento                ---
    AND     i.ide_intervento = idt.ide_intervento                      ---
    AND     i.ide_intervento = s.ide_intervento
    AND     ic.ide_intervento = i.ide_intervento
    AND     c.prg_convenzione = ic.prg_convenzione
    AND     ia.ide_intervento = i.ide_intervento
    AND     ia.cod_codiceprofilo = sa.cod_codiceprofilo
    AND     sa.des_nome_attore = 'Tirocinante'
   UNION
   SELECT   DISTINCT
            i.ide_intervento AS prg_tirocinio,
            i.dat_inizio AS dat_inizio_tirocinio,
            0 AS prg_convenzione,
            ia.cod_attore::numeric AS ide_lavoratore,
            iaente.cod_attore::numeric AS ide_datore_lavoro,
            to_number(NULL,null) AS cod_sede_lavoro,
            fn_get_data_fine_effettiva (i.ide_intervento)
               AS dat_fine_tirocinio,
            to_number(NULL,null) AS num_mesi_tirocinio,
            i.dat_stipula AS dat_stipula,
            NULL AS des_cognome_tutor_prom,
            NULL AS des_nome_tutor_prom,
            NULL AS des_cognome_tutor_dl,
            NULL AS des_nome_tutor_dl,
            o.txt_obiettivi AS txt_obiettivi,
            o.txt_facilitazioni AS txt_facilitazioni,
            iass.des_ente_assicurativo AS des_compagnia_assicuraz,
            iass.num_posizione_assicurativa AS ide_posizione_inail,
            iass.des_tipo_assicurazione AS ide_pos_responsab_civ,
            NULL AS des_orario_accesso_sede,
            'VIEW' AS cod_useragg,
            NOW() AS dtt_tmst,
            st.des_tipo_intervento AS cod_tipo_tirocinio,
            ' ' AS cod_motivo_cessazione
     FROM   intervento i
			left outer join intervento_assicurazione iass
			on i.ide_intervento = iass.ide_intervento,
            intervento_obiettivi o,
            convenzione c,                                 ---
            intervento_attore ia,
            intervento_attore iaente,
            strint_tipo st,
            strint_attore sa
    WHERE   i.ide_tipo_intervento = st.ide_tipo_intervento
    AND     st.cod_area_intervento = 'FORM'
    AND     o.ide_intervento = i.ide_intervento                 ---
    AND     iaente.ide_intervento = i.ide_intervento
    AND     iaente.cod_codiceprofilo = 'ENTE_FORMAZIONE'
    AND     ia.ide_intervento = i.ide_intervento
    AND     ia.cod_codiceprofilo = sa.cod_codiceprofilo
    AND     sa.des_nome_attore = 'Beneficiario';

			

CREATE OR REPLACE VIEW V_DEC_DETTAGLIOISTITUTO
(
   DESCRIZIONE,
   DES_DESCRIZIONE
)
AS
     SELECT   DISTINCT
              REPLACE (TRIM (DES_DETTAGLIOISTITUTO), ' ', '_') AS DESCRIZIONE,
              TRIM (DES_DETTAGLIOISTITUTO) AS DES_DESCRIZIONE
       FROM   plus_dizionari.DEC_DETTAGLIOISTITUTO
   ORDER BY   DES_DESCRIZIONE;

   
   

CREATE OR REPLACE VIEW V_LAV_ESPERIENZESTUDIO
(
   IDE_LAVORATORE,
   LIVELLO,
   VOTO,
   DESCRIZIONE
)
AS
     SELECT   A.IDE_LAVORATORE AS IDE_LAVORATORE,
              A.COD_LIVELLOSTUDIO AS LIVELLO,
              to_number (A.DES_VOTO_CONSEGUIMENTO, null) AS VOTO,
              REPLACE (TRIM (B.DES_TITOLOSTUDIO), ' ', '_') AS DESCRIZIONE
       FROM   LAV_ESPERIENZE_STUDIO A left outer join TAB_STUDIOTITOLO B on A.COD_TITOLOSTUDIO = B.COD_TITOLOSTUDIO
   ORDER BY   IDE_LAVORATORE;



CREATE OR REPLACE VIEW V_LAV_ISTITUTO
(
   IDE_LAVORATORE,
   TIPOISTITUTO,
   CERTIFICATORE,
   DESCRIZIONE,
   ULTIMA_RETRIBUZIONE
)
AS
     SELECT   A.IDE_LAVORATORE AS IDE_LAVORATORE,
              A.COD_TIPOISTITUTO AS TIPOISTITUTO,
              C.COD_CERTIFICATORI AS CERTIFICATORE,
              REPLACE (TRIM (B.des_DETTAGLIOISTITUTO), ' ', '_') AS DESCRIZIONE,
              A.IMP_ULTIMA_RETRIBUZIONE AS ULTIMA_RETRIBUZIONE
       FROM   LAV_ISTITUTO A,
              plus_dizionari.DEC_DETTAGLIOISTITUTO B,
              LAV_ISTITUTOCERT C
      WHERE   A.COD_DETTAGLIOISTITUTO = B.COD_DETTAGLIOISTITUTO
              AND A.IDE_LAV_ISTITUTO = C.IDE_LAV_ISTITUTO
   ORDER BY   IDE_LAVORATORE;   
   
-- 20220607

create or replace view v_richiesta_pag_stato_procedura as (
with statifex(
	ide_richiesta_pagamento,
    cod_stato_procedura,
    dat_stato
  ) as (
  select 
      rpsp.ide_richiesta_pagamento,
      rpsp.cod_stato_procedura,
      least(rpsp.dat_stato,rpsp2.dat_stato)
  from richiesta_pag_stato_procedura rpsp
      left outer join richiesta_pag_stato_procedura rpsp2 
          on rpsp.ide_richiesta_pagamento = rpsp2.ide_richiesta_pagamento
          and rpsp2.cod_stato_procedura = 'PAG'
  where rpsp.cod_stato_procedura = 'FEX'
)
select 
	rpsp.cod_stato_procedura, 
    rpsp.ide_richiesta_pagamento, 
    rpsp.dtt_ini, 
    coalesce(sf.dat_stato,rpsp.dat_stato), 
    rpsp.dtt_fin,  
    rpsp.txt_note, 
    rpsp.cod_userins, 
    rpsp.dtt_tmstins, 
    rpsp.cod_useragg, 
    rpsp.dtt_tmstagg
from richiesta_pag_stato_procedura rpsp
	left outer join statifex sf 
    	on rpsp.cod_stato_procedura = sf.cod_stato_procedura
        and rpsp.ide_richiesta_pagamento = sf.ide_richiesta_pagamento
order by rpsp.ide_richiesta_pagamento, rpsp.dtt_ini
);

create or replace view v_modulo_pag_stato_procedura as (

with statifex(
	ide_modulo_pagamento,
    cod_stato_procedura,
    dat_stato
  ) as (
  select 
      mpsp.ide_modulo_pagamento,
      mpsp.cod_stato_procedura,
      least(mpsp.dat_stato,mpsp2.dat_stato)
  from modulo_pag_stato_procedura mpsp
  	left outer join modulo_pag_stato_procedura mpsp2 
          on mpsp.ide_modulo_pagamento = mpsp2.ide_modulo_pagamento
          and mpsp2.cod_stato_procedura = 'PAG'
  where mpsp.cod_stato_procedura = 'FEX'
  and mpsp.dat_stato > mpsp2.dat_stato
)
select 
	mpsp.ide_modulo_pagamento, 
    mpsp.cod_stato_procedura, 
    coalesce(sf.dat_stato,mpsp.dat_stato) as dat_stato,
    mpsp.dtt_ini, 
    mpsp.dtt_fin,  
    mpsp.txt_note, 
    mpsp.cod_userins, 
    mpsp.dtt_tmstins, 
    mpsp.cod_useragg, 
    mpsp.dtt_tmstagg
from modulo_pag_stato_procedura mpsp
	left outer join statifex sf 
    	on mpsp.cod_stato_procedura = sf.cod_stato_procedura
        and mpsp.ide_modulo_pagamento = sf.ide_modulo_pagamento
order by mpsp.ide_modulo_pagamento, mpsp.dtt_ini
);
   