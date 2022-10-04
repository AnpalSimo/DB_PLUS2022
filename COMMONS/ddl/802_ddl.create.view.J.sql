
\echo 'executing script 802_ddl.create.view.J.sql';

\c :dbName :userj

CREATE OR REPLACE VIEW V_LAVORATORE_1
(
   IDE_LAVORATORE,
   COD_SESSO,
   DAT_NASCITA,
   COD_COMUNE_DOMICILIO,
   COD_PROVINCIA_DOMICILIO,
   COD_REGIONE_DOMICILIO,
   COD_RIP_TERRIT_DOMICILIO,
   COD_COMUNE_RESIDENZA,
   COD_PROVINCIA_RESIDENZA,
   COD_REGIONE_RESIDENZA,
   COD_RIP_TERRIT_RESIDENZA,
   COD_LIVELLOSTUDIO,
   COD_TITOLOSTUDIO,
   DAT_INIZIO,
   DAT_FINE,
   DTT_TMST
)
AS
   
SELECT    L.ide_lavoratore,
            L.cod_sesso,
            l.dat_nascita,
            l.cod_comune_domicilio AS COD_COMUNE_DOMICILIO,
            p1.cod_provincia AS COD_PROVINCIA_DOMICILIO,
            p1.cod_regione AS COD_REGIONE_DOMICILIO,
            r1.cod_ripterritoriale COD_RIP_TERRIT_DOMICILIO,
            l.cod_comune_residenza AS COD_COMUNE_RESIDENZA,
            p2.cod_provincia AS COD_PROVINCIA_RESIDENZA,
            p2.cod_regione AS COD_REGIONE_RESIDENZA,
            r2.cod_ripterritoriale COD_RIP_TERRIT_RESIDENZA,
            S.Cod_Livellostudio,
            S.Cod_Titolostudio,
            PAI.DAT_INIZIO,
            PAI.DAT_FINE,
            l.dtt_tmst
     FROM   :usersill .Lavoratore L
                left outer join :usersill .Lav_Esperienze_studio S on L.IDE_LAVORATORE = S.IDE_LAVORATORE 
                left outer join (SELECT  PAI2.*
                                  FROM   :usersill .lav_pai PAI2, :usersill .lav_pai_stato PAIS
                                  WHERE   PAI2.IDE_PAI = PAIS.IDE_PAI
                                  AND PAIS.COD_STATO_DOCUMENTO = 'DEF') PAI on L.IDE_LAVORATORE = PAI.IDE_LAVORATORE
                left outer join plus_classificazione.Tab_Comuni C2 on L.Cod_Comune_Residenza = C2.COD_COMUNE
                left outer join plus_classificazione.Tab_province p2 on c2.cod_provincia = p2.cod_provincia
                left outer join plus_classificazione.Tab_regioni r2 on p2.cod_regione = r2.cod_regione,
            plus_classificazione.Tab_Comuni C1,
            plus_classificazione.Tab_Province P1,
            plus_classificazione.Tab_Regioni R1
            
    WHERE       L.Cod_Comune_Domicilio = C1.COD_COMUNE
            AND C1.COD_PROVINCIA = P1.COD_PROVINCIA
            AND P1.COD_REGIONE = R1.COD_REGIONE
            AND L.FLG_CANCELLAZIONE = 'N';



/* Formatted on 17/12/2013 12:04:14 (QP5 v5.115.810.9015) */


CREATE OR REPLACE VIEW V_LAV_BILANCIO
(
   IDE_LAVORATORE,
   COD_SESSO,
   DAT_NASCITA,
   DTT_TMST,
   COD_COMUNE_DOMICILIO,
   COD_PROVINCIA_DOMICILIO,
   COD_REGIONE_DOMICILIO,
   COD_RIP_TERRIT_DOMICILIO,
   COD_COMUNE_RESIDENZA,
   COD_PROVINCIA_RESIDENZA,
   COD_REGIONE_RESIDENZA,
   COD_RIP_TERRIT_RESIDENZA,
   DAT_BILANCIO
)
AS
     SELECT   l.ide_lavoratore,
              L.cod_sesso,
              l.dat_nascita,
              l.dtt_tmst,
              l.cod_comune_domicilio AS COD_COMUNE_DOMICILIO,
              p1.cod_provincia AS COD_PROVINCIA_DOMICILIO,
              p1.cod_regione AS COD_REGIONE_DOMICILIO,
              r1.cod_ripterritoriale COD_RIP_TERRIT_DOMICILIO,
              l.cod_comune_residenza AS COD_COMUNE_RESIDENZA,
              p2.cod_provincia AS COD_PROVINCIA_RESIDENZA,
              p2.cod_regione AS COD_REGIONE_RESIDENZA,
              r2.cod_ripterritoriale COD_RIP_TERRIT_RESIDENZA,
              MIN (B.DTT_TMST) "DAT_BILANCIO"
       FROM   :usersill .Lavoratore L
                  left outer join tab_comuni c2 on l.Cod_Comune_Residenza = C2.COD_COMUNE
                  left outer join tab_province p2 on C2.COD_PROVINCIA = P2.COD_PROVINCIA
                  left outer join tab_regioni r2 on P2.COD_REGIONE = R2.COD_REGIONE
                  ,
              plus_classificazione.Tab_Comuni C1,
              plus_classificazione.Tab_Province P1,
              plus_classificazione.Tab_Regioni R1,
              :usersill .Lav_Bilancio B
      WHERE       L.Cod_Comune_Domicilio = C1.COD_COMUNE
              AND C1.COD_PROVINCIA = P1.COD_PROVINCIA
              AND P1.COD_REGIONE = R1.COD_REGIONE
              AND B.ide_lavoratore = l.ide_lavoratore
              AND L.FLG_CANCELLAZIONE = 'N'
   GROUP BY   l.ide_lavoratore,
              L.cod_sesso,
              l.dat_nascita,
              l.dtt_tmst,
              l.cod_comune_domicilio,
              p1.cod_provincia,
              p1.cod_regione,
              r1.cod_ripterritoriale,
              l.cod_comune_residenza,
              p2.cod_provincia,
              p2.cod_regione,
              r2.cod_ripterritoriale;



/* Formatted on 17/12/2013 12:04:15 (QP5 v5.115.810.9015) */


CREATE OR REPLACE VIEW V_LAVORATORI_AMMORTIZZA_1
(
   IDE_LAVORATORE,
   COD_SESSO,
   DAT_NASCITA,
   DTT_TMST,
   COD_COMUNE_DOMICILIO,
   COD_PROVINCIA_DOMICILIO,
   COD_REGIONE_DOMICILIO,
   COD_RIP_TERRIT_DOMICILIO,
   COD_COMUNE_RESIDENZA,
   COD_PROVINCIA_RESIDENZA,
   COD_REGIONE_RESIDENZA,
   COD_RIP_TERRIT_RESIDENZA,
   COD_TIPO_AMMORTIZZATORE,
   COD_DETTAGLIO_AMMORTIZZATORE,
   DAT_INIZIO_AMM,
   DAT_FINE_AMM
)
AS
   SELECT   l.ide_lavoratore,
            l.cod_sesso,
            l.dat_nascita,
            l.dtt_tmst,
            l.cod_comune_domicilio AS cod_comune_domicilio,
            p1.cod_provincia AS cod_provincia_domicilio,
            p1.cod_regione AS cod_regione_domicilio,
            r1.cod_ripterritoriale cod_rip_territ_domicilio,
            l.cod_comune_residenza AS cod_comune_residenza,
            p2.cod_provincia AS cod_provincia_residenza,
            p2.cod_regione AS cod_regione_residenza,
            r2.cod_ripterritoriale cod_rip_territ_residenza,
            ammortizzatori.cod_tipo_ammortizzatore,
            ammortizzatori.cod_dettaglio_ammortizzatore,
            ammortizzatori.dat_inizio_amm,
            ammortizzatori.dat_fine_amm
     FROM   :usersill .lavoratore l
                  left outer join tab_comuni c2 on l.Cod_Comune_Residenza = C2.COD_COMUNE
                  left outer join tab_province p2 on C2.COD_PROVINCIA = P2.COD_PROVINCIA
                  left outer join tab_regioni r2 on P2.COD_REGIONE = R2.COD_REGIONE
                  ,
            plus_classificazione.tab_comuni c1,
            plus_classificazione.tab_province p1,
            plus_classificazione.tab_regioni r1,
            /* ---------------------------------------------------------------------------------------------- */
            /* Lavoratori con ammortizzatori sociali (codificati con DEC_TIPO_ISTITUTO ={'CIGS','CIGO',...etc}*/
            /* ---------------------------------------------------------------------------------------------- */
            (                                     /* Ammortizzatori Sociali */
             SELECT   l.ide_lavoratore,
                      i.dat_inizio AS dat_inizio_amm,
                      i.dat_fine AS dat_fine_amm,
                      i.cod_tipoistituto AS cod_tipo_ammortizzatore,
                      i.cod_dettaglioistituto AS cod_dettaglio_ammortizzatore
               FROM   :usersill .lavoratore l, :usersill .lav_istituto i
              WHERE   i.ide_lavoratore = l.ide_lavoratore
                      AND l.flg_cancellazione = 'N' /*
                                                    *PARTE COMMENTATA PER LA MODIFICA DELLE STATISTICHE E L'INSERIMENTO DEL *DETTAGLIO DEGLI AMMORTIZZATORI SOCIALI
                                                    */
                                                   ) ammortizzatori
    WHERE       l.cod_comune_domicilio = c1.cod_comune
            AND c1.cod_provincia = p1.cod_provincia
            AND p1.cod_regione = r1.cod_regione
            AND ammortizzatori.ide_lavoratore = l.ide_lavoratore
            AND l.flg_cancellazione = 'N';



/* Formatted on 17/12/2013 12:04:15 (QP5 v5.115.810.9015) */


CREATE OR REPLACE VIEW V_TITOLO_STUDIO
(
   COD_TITOLO_STUDIO,
   DES_TITOLO_STUDIO,
   NUM_LIVELLO,
   COD_TITOLO_PADRE,
   COD_TITOLO_LIV1,
   COD_TITOLO_LIV2,
   DES_TITOLO_LIV2
)
AS
  SELECT a.cod_titolostudio AS cod_titolo_studio,
         a.des_titolostudio AS des_titolo_studio,
         a.tipo_livello AS num_livello,
         CASE
           WHEN a.tipo_livello::integer = 1 THEN NULL::character varying
           WHEN a.tipo_livello::integer = 2 THEN rpad(a.cod_livellostudio::text,
             8, '0'::text)::character varying
           WHEN a.tipo_livello::integer = 3 THEN a.cod_titolostudioliv2
           WHEN a.tipo_livello::integer = 4 THEN a.cod_titolostudioliv3
           ELSE NULL::character varying
         END AS cod_titolo_padre,
         a.cod_livellostudio AS cod_titolo_liv1,
         a.cod_titolostudioliv2 AS cod_titolo_liv2,
         a.des_titolostudioliv2 AS des_titolo_liv2
  FROM plus_classificazione.tab_studiotitolo a;



/* Formatted on 17/12/2013 12:04:15 (QP5 v5.115.810.9015) */

-- OK
CREATE OR REPLACE VIEW V_ISCRIZIONI
(
   IDE_ISCRIZIONE_PERSONA,
   COD_SESSO,
   COD_STATOESPERIENZA,
   COD_PROVINCIA,
   COD_REGIONE,
   COD_AREASTUDIO,
   DTT_TMSTINS,
   COD_STATO_ISCRIZIONE,
   COD_RIPTERRITORIALE
)
AS
   SELECT   p.ide_iscrizione_persona,
            TRIM (p.cod_sesso) AS cod_sesso,
            TRIM (a.cod_statoesperienza) AS cod_statoesperienza,
            TRIM (pr.cod_provincia) AS cod_provincia,
            TRIM (pr.cod_regione) AS cod_regione,
            SUBSTR (a.cod_titolostudio, 0, 7) AS cod_areastudio,
            p.dtt_tmstins,
            TRIM (s.cod_stato_iscrizione) AS cod_stato_iscrizione,
            R.COD_RIPTERRITORIALE
     FROM   iscrizione_persona p,
            iscrizione_persona_altreinfo a,
            iscrizione_persona_stato s,
            plus_classificazione.tab_studiotitolo t,
            plus_classificazione.tab_comuni c,
            plus_classificazione.tab_province pr,
            plus_classificazione.tab_regioni r
    WHERE       p.ide_iscrizione_persona = a.ide_iscrizione_persona
            AND p.ide_iscrizione_persona = s.ide_iscrizione_persona
            AND a.cod_livellostudio = t.cod_livellostudio
            AND a.cod_titolostudio = t.cod_titolostudio
            AND s.cod_stato_iscrizione = 'I'
            AND c.cod_provincia = pr.cod_provincia
            AND pr.cod_regione = r.cod_regione
            AND a.cod_livellostudio = '7';



/* Formatted on 17/12/2013 12:04:16 (QP5 v5.115.810.9015) */


CREATE OR REPLACE VIEW V_LAV_PORTAFOGLIO_COMPETENZE
(
   IDE_LAVORATORE,
   COD_SESSO,
   DAT_NASCITA,
   DTT_TMST,
   COD_COMUNE_DOMICILIO,
   COD_PROVINCIA_DOMICILIO,
   COD_REGIONE_DOMICILIO,
   COD_RIP_TERRIT_DOMICILIO,
   COD_COMUNE_RESIDENZA,
   COD_PROVINCIA_RESIDENZA,
   COD_REGIONE_RESIDENZA,
   COD_RIP_TERRIT_RESIDENZA,
   DAT_INIZIO_PORTAFOGLIO
)
AS
     SELECT   l.ide_lavoratore,
              L.cod_sesso,
              l.dat_nascita,
              l.dtt_tmst,
              l.cod_comune_domicilio AS COD_COMUNE_DOMICILIO,
              p1.cod_provincia AS COD_PROVINCIA_DOMICILIO,
              p1.cod_regione AS COD_REGIONE_DOMICILIO,
              r1.cod_ripterritoriale COD_RIP_TERRIT_DOMICILIO,
              l.cod_comune_residenza AS COD_COMUNE_RESIDENZA,
              p2.cod_provincia AS COD_PROVINCIA_RESIDENZA,
              p2.cod_regione AS COD_REGIONE_RESIDENZA,
              r2.cod_ripterritoriale COD_RIP_TERRIT_RESIDENZA,
              MIN (E.DTT_TMST) "DAT_INIZIO_PORTAFOGLIO"
       FROM   :usersill .Lavoratore L
                  left outer join tab_comuni c2 on l.Cod_Comune_Residenza = C2.COD_COMUNE
                  left outer join tab_province p2 on C2.COD_PROVINCIA = P2.COD_PROVINCIA
                  left outer join tab_regioni r2 on P2.COD_REGIONE = R2.COD_REGIONE
                  ,
              plus_classificazione.Tab_Comuni C1,
              plus_classificazione.Tab_Province P1,
              plus_classificazione.Tab_Regioni R1,
              :usersill .Lav_Elementi E
      WHERE       L.Cod_Comune_Domicilio = C1.COD_COMUNE
              AND C1.COD_PROVINCIA = P1.COD_PROVINCIA
              AND P1.COD_REGIONE = R1.COD_REGIONE
              AND E.ide_lavoratore = l.ide_lavoratore
              AND L.FLG_CANCELLAZIONE = 'N'
   GROUP BY   l.ide_lavoratore,
              L.cod_sesso,
              l.dat_nascita,
              l.dtt_tmst,
              l.cod_comune_domicilio,
              p1.cod_provincia,
              p1.cod_regione,
              r1.cod_ripterritoriale,
              l.cod_comune_residenza,
              p2.cod_provincia,
              p2.cod_regione,
              r2.cod_ripterritoriale;