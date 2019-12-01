# étape 1: faire un script qui dump une base de données


## Objectifs

L'objectif de cette étape est de réaliser un premier script permettant de dumper des bases de données.


## TP - Exercice


### Utiliser la commande `mysqldump`

La commande `mysqldump` permet de réaliser des backups d'une base de données ou d'une table via des `dumps`.

Les `dumps` représentent l'ensemble des commandes SQL pour recréer la base de données que vous souhaitez backuper.

Après avoir lu le man de [mysqldump](https://dev.mysql.com/doc/refman/5.7/en/mysqldump.html), tester la commande dans le container `bash` pour être en mesure de dumper la base `exemple01`.

Rappel des crédentials de connexion à la base de données:
* user: `root`
* password: `mySecretPassword`
* host: `mysql`
* port: `3306`


### Dumper une base de données

Par défaut, la commande `mysqldump` affiche le dump sur la sortie standard... cela signifie que vous ne le persistez pas et que vous n'allez pas être en mesure de restorer la base.

Via le man de [mysqldump](https://dev.mysql.com/doc/refman/5.7/en/mysqldump.html), vous pouvez voir l'option `--result-file` qui va vous permettre de stocker le résultat du dump dans un fichier de notre choix.

Créer un script dans `./docker/bash/scripts/` permettant de backuper la base `exemple01` dans un fichier `/data/exemple01.sql`.

:warning: quand vous écrivez votre fichier `/data/exemple01.sql` dans le container `bash`, il sera disponible localement sur `./docker/bash/scripts/exemple01.sql`.


### Dumper plusieurs bases de données

Updatez le script pour dumper la base `exemple01` et `exemple02` dans des fichiers différents (`/data/exemple01.sql` et `/data/exemple02.sql`).

:information_source: utilisez une boucle `for` (cf: [boucle for](https://www.quennec.fr/trucs-astuces/syst%C3%A8mes/gnulinux/programmation-shell-sous-gnulinux/les-bases-de-la-programmation-shell/les-structures-de-contr%C3%B4le/boucle)] pour ne pas avoir de redondance de code !


### Horodater vos backups

Lorsque vous faites des scripts de backup, une bonne pratique est d'ajouter une information de date dans le nom des fichiers.

La commande `date` vous permet de générer la date au format que vous souhaitez.

Updatez votre script pour avoir les dumps de votre bases dans un répertoire avec la date du jour.

Les dumps seront avec les paths suivants: `/data/backup/mysql_db-20191114/exemple01.sql` et `/data/backup/mysql_db-20191114/exemple02.sql`

:information_source: [Comment récupérer le résultat d'une commande dans une variable](https://www.commentcamarche.net/faq/5030-comment-recuperer-le-resultat-d-une-commande-dans-une-variable)

:information_source: Pour avoir des exemples pratiques de la commande `date`, n'hésitez pas à lire ce blog post avec plein d'exemples: [How To Format Date For Display or Use In a Shell Script](https://www.cyberciti.biz/faq/linux-unix-formatting-dates-for-display/).


## Confirmation

Appelez votre chargé de TP pour confirmer que vous êtes prêt à attaquer la suite.
Vous devez être en mesure:
* de montrer que vous êtes à l'aise avec `mysqldump`
* de faire un script bash qui génère les `dump` files de base de données
* d'utiliser une boucle `for` dans vos scripts
* d'utiliser la commande `date`
* de récupérer le résultat d'une commande dans une variable `bash`
