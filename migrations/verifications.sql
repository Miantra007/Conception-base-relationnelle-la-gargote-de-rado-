-- ETAPE 1
select
    *
from
    plat
order by
    prix desc;

-- - prix en integer
-- - id_plat identifiant
-- ETAPE 2
SELECT
    c.id_categorie,
    count(p.libelle) as nb_plat
FROM
    plat as p
    right join categorie as c on c.id_categorie = p.id_categorie
group by
    c.id_categorie;

-- -car le meme categorie sera considerer comme un autre categorie en cas de faute d'orthographe
-- INSERT into
--     plat (libelle, categorie, prix)
-- VALUES
--     ('Romazava', 'Plat malagasy', 7000),
--     ('Ravitoto sy henakisoa', 'Plat malgache', 8000);
-- ETAPE 3
SELECT
    c.daty,
    c.id_commande,
    sum(cp.quantite * p.prix) as montant
from
    commande_plat as cp
    join plat as p on p.id_plat = cp.id_plat
    join commande as c on c.id_commande = cp.id_commande
GROUP BY
    c.daty,
    c.id_commande;

-- je place la quantite dans commande_plat
-- ETAPE 4
select
    CASE
        WHEN cm.id_client is NULL THEN 'Client de passage'
        ELSE c.nom_client
    END as client,
    cm.daty
from
    commande as cm
    left join client as c on c.id_client = cm.id_client;

-- ma cle etrangere est null car il peut y avoir des clients de passages
-- il faut left join
-- ETAPE 5
select
    count(distinct cp.id_commande) as nb_commande,
    sum(cp.quantite * p.prix) as chiffre_affaire,
    s.nom_serveur
from
    commande as c
    join serveurs as s on s.id_serveur = c.id_serveur
    join commande_plat as cp on cp.id_commande = c.id_commande
    join plat as p on p.id_plat = cp.id_plat
GROUP BY
    s.nom_serveur,
    s.id_serveur;

-- Une table et une commande sont differentes car une table peut avoir plusieurs commandes et une commande associee a une seule table
-- table pose un probleme en sql a cause du syntaxe "create table"
-- ETAPE 6
select
    c.id_commande AS commande,
    COALESCE(plats.montant_du, 0) AS montant_du,
    COALESCE(paiements.montant_paye, 0) AS montant_paye,
    COALESCE(plats.montant_du, 0) - COALESCE(paiements.montant_paye, 0) AS reste_payer
from
    commande as c
    LEFT join (
        select
            cm.id_commande,
            sum(pl.prix * cm.quantite) as montant_du
        from
            commande_plat as cm
            join plat as pl on pl.id_plat = cm.id_plat
        GROUP BY
            cm.id_commande
    ) as plats on plats.id_commande = c.id_commande
    LEFT JOIN(
        SELECT
            p.id_commande,
            sum(pf.montant) as montant_paye
        from
            paiement as p
            join paiement_fille as pf on pf.id_paiement = p.id_paiement
        GROUP BY
            p.id_commande
    ) as paiements ON paiements.id_commande = c.id_commande
ORDER BY
    c.id_commande;

-- montant_paye dans la table commande ne suffit pas puisque le client ne poura pas beneficier des differentes mode de paiement
-- contrainte CHECK : juste ajouter une condition dans la table paiement pour verifier les modes de paiement
-- table reference : vraiement creer une autre table pour stocker les modes de paiement
-- ETAPE 8
select
    ig.libelle,
    qteIngredient.conso
from
    ingredient as ig
    join (
        SELECT
            ip.id_ingredient,
            sum(ip.quantite * cp.quantite) as conso
        from
            ingredient_plat as ip
            join commande_plat as cp on ip.id_plat = cp.id_plat
            join commande as c on c.id_commande = cp.id_commande
        WHERE
            c.daty = '2026-10-12'
        GROUP BY
            ip.id_ingredient
    ) as qteIngredient on qteIngredient.id_ingredient = ig.id_ingredient;

-- la colonne ingredients VARCHAR(500) contenant « riz, zébu, brèdes » n'est pas conseille car on ne peut pas traite les ingredient un par un (unite,stock)