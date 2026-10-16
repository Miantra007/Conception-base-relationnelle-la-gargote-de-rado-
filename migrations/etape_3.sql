CREATE Table commande(
    id_commande serial primary key,
    daty date not NULL
);

CREATE Table commande_plat(
    id serial PRIMARY key,
    id_plat INTEGER REFERENCES plat(id_plat) on delete CASCADE,
    id_commande INTEGER REFERENCES commande(id_commande) on delete CASCADE,
    quantite INTEGER NOT NULL
);

-- 1. Créer 2 commandes
INSERT INTO commande (daty) VALUES
('2026-10-16'),
('2026-10-17');

-- 2. Ajouter 10 plats aux commandes
INSERT INTO commande_plat (id_plat, id_commande, quantite) VALUES
-- Commande 1
(1, 1, 2),  -- 2 Romazava
(2, 1, 1),  -- 1 Ravitoto sy henakisoa
(3, 1, 2),  -- 2 Akoho sy voanio
(6, 1, 4),  -- 4 Mofo gasy
(7, 1, 2),  -- 2 Ranon’ampango

-- Commande 2
(4, 2, 2),  -- 2 Mi sao
(5, 2, 1),  -- 1 Soupe chinoise
(1, 2, 1),  -- 1 Romazava
(6, 2, 3),  -- 3 Mofo gasy
(7, 2, 4);  -- 4 Ranon’ampango