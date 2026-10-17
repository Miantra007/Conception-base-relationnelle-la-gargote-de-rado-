### ETAPE 1
plat(**id_plat**,libelle,categorie,prix)

### ETAPE 2
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)


### ETAPE 3
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty)
commande_plat(**id**,#id_plat,#id_commande,quantite)

### ETAPE 4
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty,#id_client?(nouveau))
commande_plat(**id**,#id_plat,#id_commande,quantite)
client(**id_client**,nom_client)

### ETAPE 5
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty,#id_client?(nouveau),#id_serveur(nouveau))
commande_plat(**id**,#id_plat,#id_commande,quantite,#id_table(nouveau))
client(**id_client**,nom_client)
serveurs(**id_serveur**,nom_serveur)
tablee(**id_table**,num_table)
