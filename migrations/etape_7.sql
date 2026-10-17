ALTER Table
    commande
add
    COLUMN montant INTEGER;

CREATe Table historique_prix_plat(
    id_historique_prix_plat serial PRIMARY key,
    id_plat INTEGER REFERENCES plat(id_plat) on delete CASCADE,
    prix INTEGER
);

INSERT into
    historique_prix_plat (id_plat, prix, daty)
VALUES
    (1, 7000, '2026-10-15');

ALTER Table
    historique_prix_plat
add
    COLUMN daty DATE;

UPDATE
    plat
SET
    prix = 7500
WHERE
    id_plat = 1;