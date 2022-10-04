
INSERT INTO DEC_CALCOLO_ORE  (cod_calcolo_ore, des_calcolo_ore, dat_inizio, dat_fine)
VALUES ('000', 'Nessun troncamento', NOW(), NULL);

INSERT INTO DEC_CALCOLO_ORE  (cod_calcolo_ore, des_calcolo_ore, dat_inizio, dat_fine)
VALUES ('001', 'Per ogni orario indicato viene effettuato l''eventuale troncamento dei minuti eccedenti l''ora e successivamente sommato insieme alle altre righe', NOW(), NULL);

INSERT INTO DEC_CALCOLO_ORE  (cod_calcolo_ore, des_calcolo_ore, dat_inizio, dat_fine)
VALUES ('002', 'Viene effettuata la somma di tutte le ore  poi effettuato l''eventuale troncamento eccedente l''ora', NOW(), NULL);
