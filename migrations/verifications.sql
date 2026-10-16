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


-- ETAPE 3
SELECT c.daty ,sum(cp.quantite * p.prix) as montant from commande_plat as cp
join plat as p
on p.id_plat = cp.id_plat
join commande as c
on c.id_commande = cp.id_commande
GROUP BY c.daty;
-- je place la quantite dans commande_plat

-- ETAPE 4
select 
CASE 
    WHEN cm.id_client is NULL THEN  'Client de passage'
    ELSE c.nom_client
END as client,
cm.daty from commande as cm
left join client as c
on c.id_client = cm.id_client;

-- ma cle etrangere est null car il peut y avoir des clients de passages
-- il faut left join

