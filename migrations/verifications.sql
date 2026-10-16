-- ETAPE 1
select * from plat order by prix desc;
-- - prix en integer
-- - id_plat identifiant


-- ETAPE 2
SELECT c.id_categorie,count(p.libelle) as nb_plat FROM plat as p
right join categorie as c
on c.id_categorie = p.id_categorie
group by c.id_categorie;
-- -car le meme categorie sera considerer comme un autre categorie en cas de faute d'orthographe
-- INSERT into
--     plat (libelle, categorie, prix)
-- VALUES
--     ('Romazava', 'Plat malagasy', 7000),
--     ('Ravitoto sy henakisoa', 'Plat malgache', 8000);
