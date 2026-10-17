CREATE TABLE ingredient(
    id_ingredient serial PRIMARY KEY,
    libelle VARCHAR(50),
    unite VARCHAR(10),
    stock numeric(10, 2)
);

CREATE Table ingredient_plat(
    id_ingredient_plat serial PRIMARY key,
    id_plat INTEGER REFERENCES plat(id_plat),
    id_ingredient INTEGER REFERENCES ingredient(id_ingredient),
    quantite NUMeric(10, 2)
);

INSERT INTO
    ingredient (libelle, unite, stock)
VALUES
    ('Riz', 'g', 20000),
    ('Viande de zébu', 'g', 5000),
    ('Brèdes mafana', 'g', 3000),
    ('Porc', 'g', 5000),
    ('Feuilles de manioc pilées', 'g', 5000),
    ('Poulet', 'g', 5000),
    ('Lait de coco', 'L', 3),
    ('Nouilles', 'g', 5000),
    ('Viande de bœuf', 'g', 3000),
    ('Carottes', 'g', 3000),
    ('Chou', 'g', 3000),
    ('Oignons', 'g', 2000),
    ('Ail', 'g', 500),
    ('Gingembre', 'g', 500),
    ('Huile', 'L', 5),
    ('Farine de riz', 'g', 5000),
    ('Sucre', 'g', 2000),
    ('Levure', 'g', 200),
    ('Eau', 'L', 20),
    ('Riz brûlé', 'g', 3000);

INSERT INTO
    ingredient_plat (id_plat, id_ingredient, quantite)
VALUES
    -- 1. Romazava
    (1, 1, 250),
    -- Riz : 250 g
    (1, 2, 150),
    -- Viande de zébu : 150 g
    (1, 3, 100),
    -- Brèdes mafana : 100 g
    (1, 12, 20),
    -- Oignons : 20 g
    (1, 13, 5),
    -- Ail : 5 g
    (1, 15, 0.02),
    -- Huile : 0,02 L
    -- 2. Ravitoto sy henakisoa
    (2, 1, 250),
    -- Riz : 250 g
    (2, 5, 200),
    -- Feuilles de manioc pilées : 200 g
    (2, 4, 150),
    -- Porc : 150 g
    (2, 12, 20),
    -- Oignons : 20 g
    (2, 13, 5),
    -- Ail : 5 g
    (2, 15, 0.02),
    -- Huile : 0,02 L
    -- 3. Akoho sy voanio
    (3, 1, 250),
    -- Riz : 250 g
    (3, 6, 200),
    -- Poulet : 200 g
    (3, 7, 0.15),
    -- Lait de coco : 0,15 L
    (3, 12, 20),
    -- Oignons : 20 g
    (3, 13, 5),
    -- Ail : 5 g
    (3, 14, 5),
    -- Gingembre : 5 g
    (3, 15, 0.02),
    -- Huile : 0,02 L
    -- 4. Mi sao
    (4, 8, 200),
    -- Nouilles : 200 g
    (4, 9, 80),
    -- Viande de bœuf : 80 g
    (4, 10, 50),
    -- Carottes : 50 g
    (4, 11, 50),
    -- Chou : 50 g
    (4, 12, 20),
    -- Oignons : 20 g
    (4, 13, 5),
    -- Ail : 5 g
    (4, 15, 0.02),
    -- Huile : 0,02 L
    -- 5. Soupe chinoise
    (5, 8, 100),
    -- Nouilles : 100 g
    (5, 9, 50),
    -- Viande de bœuf : 50 g
    (5, 10, 30),
    -- Carottes : 30 g
    (5, 11, 30),
    -- Chou : 30 g
    (5, 12, 15),
    -- Oignons : 15 g
    (5, 13, 3),
    -- Ail : 3 g
    (5, 14, 3),
    -- Gingembre : 3 g
    (5, 19, 0.4),
    -- Eau : 0,4 L
    -- 6. Mofo gasy (4 pièces)
    (6, 16, 100),
    -- Farine de riz : 100 g
    (6, 17, 20),
    -- Sucre : 20 g
    (6, 18, 2),
    -- Levure : 2 g
    (6, 19, 0.1),
    -- Eau : 0,1 L
    (6, 15, 0.01),
    -- Huile : 0,01 L
    -- 7. Ranon'ampango
    (7, 20, 30),
    -- Riz brûlé : 30 g
    (7, 19, 0.5);

-- Eau : 0,5 L
INSERT INTO
    commande (daty, montant)
VALUES
    ('2026-10-12', 13500);

    INSERT INTO commande_plat (id_plat, id_commande, quantite)
VALUES
    (1, 5, 1), -- 1 Romazava
    (4, 5, 1); -- 1 Mi sao

    UPDATE commande set id_serveur = 1 WHERE id_commande = 5;