# étape 5: création d'un script de restore


## Objectifs

L'objectif de cette étape est de créer un script qui va restorer le contenu de votre archive.
L'idée étant de réutiliser tout ce que vous avez appris jusque là.


## TP - Exercice


### Faire un script de restore

Volontairement nous allons vous donner peu d'indication sur cette étape afin de voir comment vous allez aborder le sujet.

Le but est d'écrire un script qui restore l'ensemble des bases de données contenues dans une archive chiffrée avec `gpg`.

Le script devra être appelé sur ce modèle:
```
./mon_script_de_restore.sh "/data/backup/mysql_db-20191114-decrypted.tar.gz.gpg"
```

Le script devra:
* déchiffrer automatiquement le fichier gpg (on suppose que vous connaissez déjà le password)
* ouvrir l'archive `tar.gz` et restorer chaque fichier `.sql` contenu

:information_source: Pour restorer un fichier `sql`, vous pouvez vous inspirer de [cet article](https://www.memoinfo.fr/tutoriels-linux/guide-sauvegarde-restauration-mysql/).

### Encore plus?

Mettez à jour le script pour ne restorer qu'une base de données spécifiée.
Par exemple si je ne veux restorer que `exemple02`:

```
./mon_script_de_restore.sh "/data/backup/mysql_db-20191114-decrypted.tar.gz.gpg" "exemple02"
```

## Confirmation

Appelez votre chargé de TP pour confirmer que vous êtes prêt à attaquer la suite.
Vous devez être en mesure:
* d'être autonome pour écrire un script from scratch
* réutiliser tous les éléments vus lors du TP

Question bonus:
* Ajouter un maximum de tests: est ce que le fichier `gpg` passé en paramètre existe, etc... soyez inventifs!)
* Utiliser [getopts](https://www.journaldunet.fr/web-tech/developpement/1202855-comment-utiliser-la-commande-getopts-en-bash/) pour une meilleure gestion des paramètres
