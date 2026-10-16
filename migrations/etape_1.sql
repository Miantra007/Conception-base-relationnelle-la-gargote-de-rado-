CREATE DATABASE gargoterado;

\c gargoterado;

CREATE Table plat(
    id_plat serial PRIMARY key,
    libelle VARCHAR(50) not NULL,
    categorie VARCHAR(50) not NULL,
    prix INTEGER not NULL
);

INSERT into
    plat (libelle, categorie, prix)
VALUES
    ('Romazava', 'Plat malagasy', 7000),
    ('Ravitoto sy henakisoa', 'Plat malagasy', 8000),
    ('Akoho sy voanio', 'Plat malagasy', 8500),
    ('Mi sao', 'Plat chinois', 6000),
    ('Soupe chinoise', 'Soupe', 5000),
    ('Mofo gasy(les 4)', 'Dessert et goûter', 1000),
    ('Ranon’ampango', 'Boisson', 500);