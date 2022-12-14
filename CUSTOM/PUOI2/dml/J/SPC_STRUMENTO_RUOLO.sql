/* Data for the 'spc_strumento_ruolo' table  (Records 1 - 55) */

INSERT INTO spc_strumento_ruolo ("cod_strumento", "cod_ruolo_strumento", "des_nome", "des_descrizione", "cod_userins", "dtt_tmstins")
VALUES 
  (E'ST.AMM.ANP.LSTELENCHI', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE ', E'UTENTE IN VISUALIZZAZIONE ', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTLAVDATIPAGAMENTO', E'USERMOD', E'UTENTE IN MODIFICA', E'UTENTE IN MODIFICA', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTLAVDATIPAGAMENTO', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTMODULIDETRAZIONI', E'USERMOD', E'UTENTE IN MODIFICA', E'UTENTE IN MODIFICA', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTMODULIDETRAZIONI', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTMODULIPAGAMENTO', E'ADMIN', E'UTENTE AMMINISTRATORE', E'UTENTE che visualizza e gestisce la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTMODULIPAGAMENTO', E'USERGES', E'UTENTE che visualizza e gestisce la richiesta', E'UTENTE che visualizza e gestisce la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTMODULIPAGAMENTO', E'USERMOD', E'UTENTE che visualizza, cancella e modifica la richiesta', E'UTENTE che visualizza, cancella e modifica la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTMODULIPAGAMENTO', E'USERNOGES', E'UTENTE che visualizza, modifica, cancella e aggiorna le richieste', E'UTENTE che visualizza, modifica, cancella e aggiorna le richieste', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTMODULIPAGAMENTO', E'USERVIS', E'UTENTE che visualizza la richiesta', E'UTENTE che visualizza la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTRICHIESTEPAGAMENTO', E'ADMIN', E'UTENTE AMMINISTRATORE', E'UTENTE AMMINISTRATORE', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTRICHIESTEPAGAMENTO', E'USERGES', E'UTENTE che visualizza e gestisce la richiesta', E'UTENTE che visualizza e gestisce la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTRICHIESTEPAGAMENTO', E'USERMOD', E'UTENTE che visualizza, cancella e modifica la richiesta', E'UTENTE che visualizza, cancella e modifica la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTRICHIESTEPAGAMENTO', E'USERRUP', E'UTENTE che visualizza e elimina la richiesta', E'UTENTE che visualizza e elimina la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTRICHIESTEPAGAMENTO', E'USERVIS', E'UTENTE che visualizza la richiesta', E'UTENTE che visualizza la richiesta', E'SYSTEM', NOW() ),
  (E'ST.AMM.LSTSTATIRICPAGAGGNOTE', E'USERVIS', E'UTENTE che visualizza gli stati', E'UTENTE che visualizza gli stati', E'SYSTEM', NOW() ),
  (E'ST.AMM.PAI.LSTELENCHI', E'USERGES', E'UTENTE che visualizza e gestisce gli elenchi', E'UTENTE che visualizza e gestisce gli elenchi', E'SYSTEM', NOW() ),
  (E'ST.AMM.PAI.LSTELENCHI', E'USERMOD', E'UTENTE che crea, visualizza, modifica e cancella gli elenchi', E'UTENTE che crea, visualizza, modifica e cancella gli elenchi', E'SYSTEM', NOW() ),
  (E'ST.AMM.PAI.LSTELENCHI', E'USERVIS', E'UTENTE che visualizza gli elenchi', E'UTENTE che visualizza gli elenchi', E'SYSTEM', NOW() ),
  (E'ST.AMM.TIR.GESDDR', E'USER', E'UTENTE', E'UTENTE', E'SYSTEM', NOW() ),
  (E'ST.AMM.TIR.GESDDR', E'USERCDG', E'UTENTE', E'UTENTE', E'SYSTEM', NOW() ),
  (E'ST.AMM.TIR.INSDDR', E'USER', E'UTENTE', E'UTENTE', E'SYSTEM', NOW() ),
  (E'ST.AMM.TIR.INSDDR', E'USERCDG', E'UTENTE CDG', E'UTENTE CONTROLLO GESTIONE ', E'SYSTEM', NOW() ),
  (E'ST.AMM.TUT.INSELENCO', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE ', E'UTENTE IN VISUALIZZAZIONE ', E'SYSTEM', NOW() ),
  (E'ST.AMM.TUT.LSTELENCHI', E'ADMIN', E'Operatore ADMIN(modifica, stampa elenco e dichiara pagabile)', E'Operatore ADMIN (modifica, stampa elenco e dichiara pagabile)', E'SYSTEM', NOW() ),
  (E'ST.AMM.TUT.LSTELENCHI', E'USER', E'Operatore USER (modifica e stampa)', E'Operatore USER (modifica e stampa)', E'SYSTEM', NOW() ),
  (E'ST.AMM.TUT.LSTELENCHI', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE ', E'UTENTE IN VISUALIZZAZIONE ', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTISCAZIENDESTATO', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTISCAZIENDESTATO', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTISCSTATO', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTISCSTATO', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTLAVCITT', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTLAVDOM', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTLAVDOM', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTLAVENTECOMP', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTLAVENTECOMP', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTLAVRES', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTLAVRES', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTSUSSIDI', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTSUSSIDI', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTTIRCCCSETTORE', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTTIRCCCSETTORE', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTTIRCONT003', E'USERMOD', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'UTENTE IN VISUALIZZAZIONE ESTRAZIONI', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTTIRCONT003', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.REP.REPORTTIRCONTCITT', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIAZIENDA', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIAZIENDAI', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIAZIENDAR', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIAZIENDAV', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIPERSONA', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIPERSONAD', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIPERSONAI', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIPERSONAP', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIPERSONAR', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW() ),
  (E'ST.SIC.LSTISCRIZIONIPERSONAV', E'USERVIS', E'UTENTE IN VISUALIZZAZIONE', E'UTENTE IN VISUALIZZAZIONE', E'SYSTEM', NOW());