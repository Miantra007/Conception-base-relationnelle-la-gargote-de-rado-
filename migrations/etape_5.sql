CREATE Table serveurs(
    id_serveur serial PRIMARY key,
    nom_serveur VARCHAR(50)
);

INSERT into
    serveurs(nom_serveur)
VALUES
    ('Njaka Rakoto'),
    ('Lalao Rasoa');

CREATE Table tablee(
    id_table serial PRIMARY key,
    num_table INTEGER
);

INSERT into
    tablee (num_table)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8);


ALTER Table commande ADD COLUMN id_serveur INTEGER REFERENCES serveurs(id_serveur) on delete CASCADE;
ALTER Table commande_plat ADD COLUMN id_table INTEGER REFERENCES tablee(id_table) on delete CASCADE;

UPDATE commande set id_serveur = 1 WHERE id_commande = 1 or id_commande = 2;
UPDATE commande set id_serveur = 2 WHERE id_commande = 3 or id_commande = 4;

UPDATE commande_plat set id_table =1  WHERE id_commande = 1;
UPDATE commande_plat set id_table =8  WHERE id_commande = 2;
UPDATE commande_plat set id_table =2  WHERE id_commande = 3;
UPDATE commande_plat set id_table =5  WHERE id_commande = 4;
UPDATE commande_plat set id_table = NULL  WHERE id = 4 or id= 30;



