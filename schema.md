### ETAPE 1
plat(**id_plat**,libelle,categorie,prix)

### ETAPE 2
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)


### ETAPE 3
plat(**id_plat**,libelle,#id_categorie(modifier),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty)
commande_plat(**id**,#id_plat,#id_commande,quantite)