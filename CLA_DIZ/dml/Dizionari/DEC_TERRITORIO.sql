
INSERT INTO DEC_TERRITORIO(
          SELECT 
				DISTINCT(tc.cod_comune) COD_COMUNE,  
                 tc.des_comune DES_COMUNE, 
                 tc.cod_provincia COD_PROVINCIA, 
                 tp.des_provincia DES_PROVINCIA ,
                 tr.cod_ml COD_REGIONE,
                 tr.des_regione DES_REGIONE,
                 ti.cod_intermediario COD_INTERMEDIARIO,
                 ti.des_intermediario DES_INTERMEDIARIO,
                 ti.cod_tipo_intermediario   COD_TIPO_INTERMEDIARIO,
                 tti.des_tipo_intermediario  DES_TIPO_INTERMEDIARIO,
                (case 
					when 
						tr.cod_regione = '14'
					then 
						'Obiettivo 1 (QSN 00-06)'
					when 
                       tr.cod_regione = '15'
					then 
						'Obiettivo 1 (QSN 00-06)'
					when 
                       tr.cod_regione = '16'
					then 
						'Obiettivo 1 (QSN 00-06)'
					when 
                       tr.cod_regione = '17'
					then 
						'Obiettivo 1 (QSN 00-06)'
					when 
                       tr.cod_regione = '18'
					then 
						'Obiettivo 1 (QSN 00-06)'
					when 
                       tr.cod_regione = '19'
					then 
						'Obiettivo 1 (QSN 00-06)'
					when 
                       tr.cod_regione = '20'
					then 
						'Obiettivo 1 (QSN 00-06)'
					else 
						'Obiettivo 3 (QSN 00-06)'
                 end) DES_OB_UNO_TRE,
				(case 
					when 
						tr.cod_regione = '15'
					then 
						'Reg. Convergenza + pho (QSN 07-13)'
					when 
						tr.cod_regione = '16'
					then 
						'Reg. Convergenza + pho (QSN 07-13)'
					when 
						tr.cod_regione = '17'
					then 
						'Reg. Convergenza + pho (QSN 07-13)'
					when 
						tr.cod_regione = '18'
					then 
						'Reg. Convergenza + pho (QSN 07-13)'
					when 
						tr.cod_regione = '19'
					then 
						'Reg. Convergenza + pho (QSN 07-13)'                       
					else 
						'Reg. Competitività + phi (QSN 07-13)'
				end ) DES_OB_CONV_CRO       
          FROM   tab_comuni_cap tcc, 
                 tab_comuni tc, 
                 tab_intermediari ti, 
                 tab_comune_intermediari tci,
                 tab_province tp, 
                 tab_regioni tr, 
                 tab_tipo_intermediario tti
          WHERE  tc.cod_comune = tcc.cod_comune
          AND    ti.cod_tipo_intermediario = tti.cod_tipo_intermediario
          AND    tp.cod_provincia = tc.cod_provincia
          AND    tp.cod_ml_reg = tr.cod_ml
          AND    tci.cod_intermediario = ti.cod_intermediario
          AND    tci.cod_comune = tc.cod_comune
          );