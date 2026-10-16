CREATE Table client(
    id_client serial PRIMARY KEY,
    nom_client VARCHAr(50)
);

ALTER Table commande ADD COLUMN id_client INTEGER REFERENCES client(id_client) on delete CASCADE;


INSERT INTO client(nom_client) VALUES
('Miantra'),
('Lahatra');


INSERT INTO commande (daty,id_client) VALUES
('2026-10-18',1),
('2026-10-19',2);

INSERT INTO commande_plat (id_plat, id_commande, quantite) VALUES
-- Commande 1
(1, 3, 2),  -- 2 Romazava
(2, 3, 1),  -- 1 Ravitoto sy henakisoa
(3, 3, 2),  -- 2 Akoho sy voanio
(6, 3, 1),  -- 4 Mofo gasy
(5, 3, 2),  -- 2 Ranon’ampango

-- Commande 2
(4, 4, 3),  -- 2 Mi sao
(1, 4, 1),  -- 1 Soupe chinoise
(1, 4, 1),  -- 1 Romazava
(6, 4, 3),  -- 3 Mofo gasy
(7, 4, 4);  -- 4 Ranon’ampango
