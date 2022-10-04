/* Data for the 'plus_dizionari.dec_tipologia_azione' table  (Records 1 - 11) */

INSERT INTO plus_dizionari.dec_tipologia_azione ("cod_applicazione", "cod_tipologia_azione", "des_tipologia_azione", "cod_tipo_azione_padre", "tipo_livello", "dat_inizio", "dat_fine", "dtt_tmst")
VALUES 
  (E'PERCORSI', E'100', E'Area Servizi di accoglienza e presa in carico', NULL, 1, NOW(), NULL, NOW()),
  (E'PERCORSI', E'100.10', E'Bilancio delle competenze', E'100', 2, NOW(), NULL, NOW()),
  (E'PERCORSI', E'100.20', E'Definizione del Piano di Azione Individuale', E'100', 2, NOW(), NULL, NOW()),
  (E'PERCORSI', E'200', E'Servizi di formazione', NULL, 1, NOW(), NULL, NOW()),
  (E'PERCORSI', E'200.10', E'Tutoring e accompagnamento al training on the job (tutoraggio didattico)', E'200', 2, NOW(), NULL, NOW()),
  (E'PERCORSI', E'300', E'Servizi al lavoro', NULL, 1, NOW(), NULL, NOW()),
  (E'PERCORSI', E'300.10', E'Orientamento e formazione alla ricerca attiva del lavoro', E'300', 2, NOW(), NULL, NOW()),
  (E'PERCORSI', E'300.20', E'Coaching', E'300', 2, NOW(), NULL, NOW()),
  (E'PERCORSI', E'300.30', E'Scouting aziendale e ricerca del lavoro', E'300', 2, NOW(), NULL, NOW()),
  (E'PERCORSI', E'400', E'Servizi di autonomia', NULL, 1, NOW(), NULL, NOW()),
  (E'PERCORSI', E'400.10', E'Servizi per l''accesso abitativo', E'400', 2, NOW(), NULL, NOW());