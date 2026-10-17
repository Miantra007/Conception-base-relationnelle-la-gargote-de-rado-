create Table mobile_money(
    id_mobile_money serial PRIMARY KEY,
    libelle VARCHAR(20) UNIQUE
);

CREATE TABLE type_paiement (
    id_type_paiement SERIAL PRIMARY KEY,
    libelle VARCHAR(30) NOT NULL UNIQUE
);

CREATE Table paiement(
    id_paiement serial PRIMARY key,
    id_commande INTEGER REFERENCES commande(id_commande) on delete CASCADE,
    daty DATE
);

CREATE TABLE paiement_fille (
    id_paiement_fille SERIAL PRIMARY KEY,
    id_paiement INTEGER NOT NULL REFERENCES paiement(id_paiement) ON DELETE CASCADE,
    id_type_paiement INTEGER NOT NULL REFERENCES type_paiement(id_type_paiement),
    id_mobile_money INTEGER REFERENCES mobile_money(id_mobile_money),
    montant INTEGER,
    reference_transaction VARCHAR(100),
    CHECK (
        (
            id_type_paiement = 1
            AND id_mobile_money IS NULL
        )
        OR (
            id_type_paiement = 2
            AND id_mobile_money IS NOT NULL
        )
    )
);

INSERT INTO
    mobile_money(libelle)
VALUES
    ('MVola'),
    ('Orange Money'),
    ('Airtel Money');

INSERT INTO
    type_paiement (libelle)
VALUES
    ('Espèces'),
    ('Mobile Money');

INSERT INTO paiement(id_commande,daty) VALUES 
(1,'2026-10-17'),
(2,'2026-10-18');

INSERT into paiement_fille(id_paiement,id_type_paiement,id_mobile_money,montant,reference_transaction) VALUES
(1,1,NULL,10000,NULL),
(1,2,1,5000,'REF00001'),
(2,2,2,6000,'REF00002');


drop table paiement_fille;
drop table paiement;
drop table type_paiement;
drop Table mobile_money;

