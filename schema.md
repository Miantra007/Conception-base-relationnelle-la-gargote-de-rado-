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

### ETAPE 6
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty,#id_client?(nouveau),#id_serveur(nouveau))
commande_plat(**id**,#id_plat,#id_commande,quantite,#id_table(nouveau))
client(**id_client**,nom_client)
serveurs(**id_serveur**,nom_serveur)
tablee(**id_table**,num_table)
mobile_money(**id_mobile_money**,libelle)
type_paiement(**id_type_paiement**,libelle)
paiement(**id_paiement**,#id_commande,daty)
paiement_fille(**id_paiement_fille**,#id_paiement,#id_type_paiement,#id_mobile_money,montant,reference_transaction)



### ETAPE 7
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty,#id_client?(nouveau),#id_serveur(nouveau),montant(modifie))
commande_plat(**id**,#id_plat,#id_commande,quantite,#id_table(nouveau))
client(**id_client**,nom_client)
serveurs(**id_serveur**,nom_serveur)
tablee(**id_table**,num_table)
mobile_money(**id_mobile_money**,libelle)
type_paiement(**id_type_paiement**,libelle)
paiement(**id_paiement**,#id_commande,daty)
paiement_fille(**id_paiement_fille**,#id_paiement,#id_type_paiement,#id_mobile_money,montant,reference_transaction)


### ETAPE 8
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty,#id_client?(nouveau),#id_serveur(nouveau),montant(modifie))
commande_plat(**id**,#id_plat,#id_commande,quantite,#id_table(nouveau))
client(**id_client**,nom_client)
serveurs(**id_serveur**,nom_serveur)
tablee(**id_table**,num_table)
mobile_money(**id_mobile_money**,libelle)
type_paiement(**id_type_paiement**,libelle)
paiement(**id_paiement**,#id_commande,daty)
paiement_fille(**id_paiement_fille**,#id_paiement,#id_type_paiement,#id_mobile_money,montant,reference_transaction)
ingredient(**id_ingredient**,libelle,unite,stock)
ingredient_plat(**id_ingredient_plat**,#id_plat,#id_ingredient,quantite)


### ETAPE 9
plat(**id_plat**,libelle,#id_categorie(modifie),prix)
categorie(**id_categorie**,libelle)
commande(**id_commande**,daty,#id_client?(nouveau),#id_serveur(nouveau),montant(modifie))
commande_plat(**id**,#id_plat,#id_commande,quantite,#id_table(nouveau),#id_menu(nouveau))
client(**id_client**,nom_client)
serveurs(**id_serveur**,nom_serveur)
tablee(**id_table**,num_table)
mobile_money(**id_mobile_money**,libelle)
type_paiement(**id_type_paiement**,libelle)
paiement(**id_paiement**,#id_commande,daty)
paiement_fille(**id_paiement_fille**,#id_paiement,#id_type_paiement,#id_mobile_money,montant,reference_transaction)
ingredient(**id_ingredient**,libelle,unite,stock)
ingredient_plat(**id_ingredient_plat**,#id_plat,#id_ingredient,quantite)
menu(**id_menu**,libelle,prix)
composition_menu(**id_composition_menu**,#id_menu,#id_plat)