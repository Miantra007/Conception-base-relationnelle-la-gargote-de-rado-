CREATE Table categorie(
    id_categorie serial PRIMARY KEY,
    libelle VARCHAR(50)
);

ALTER Table plat ADD COLUMN id_categorie INTEGER REFERENCES categorie(id_categorie)on delete CASCADE;

INSERT INTO categorie(libelle) VALUES
('Plat malagasy'),
('Plat chinois'),
('Dessert et goûter'),
('Boisson');
INSERT INTO categorie(libelle) VALUES
('Soupe');
INSERT INTO categorie(libelle) VALUES
('Eau');


UPDATE plat set id_categorie = 1 WHERE categorie = 'Plat malagasy';
UPDATE plat set id_categorie = 2 WHERE categorie = 'Plat chinois';
UPDATE plat set id_categorie = 3 WHERE categorie = 'Dessert et goûter';
UPDATE plat set id_categorie = 4 WHERE categorie = 'Boisson';
UPDATE plat set id_categorie = 5 WHERE categorie = 'Soupe';

ALTER Table plat drop COLUMN categorie;

ALTER TABLE plat alter COLUMN id_categorie set not NULL;




