CREATE Table menu(
    id_menu serial PRIMARY key,
    libelle VARCHAR(50),
    prix INTEGER
);

CREATE Table composition_menu(
    id_composition_menu serial PRIMARY KEY,
    id_menu INTEGER REFERENCES menu(id_menu),
    id_plat INTEGER REFERENCES plat(id_plat)
);

ALTER Table commande_plat ADD COLUMN id_menu INTEGER REFERENCES menu(id_menu) on delete CASCADE;
ALTER TABLE commande_plat
ALTER COLUMN id_plat DROP NOT NULL;

INSERT into menu(libelle,prix) VALUES
('Menu romazava',8000);

INSERT INTO composition_menu(id_menu,id_plat) VALUES
(1,1),
(1,7),
(1,6);

INSERT INTO commande (daty,id_serveur,montant) VALUES
('2026-10-26',1,8000);

-- 2. Ajouter 10 plats aux commandes
INSERT INTO commande_plat (id_commande, quantite,id_table,id_menu) VALUES
(6, 1, 8,1);
