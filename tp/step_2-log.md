# étape 2: ajouter des logs


## Objectifs

L'objectif de cette étape est d'améliorer le script avec des logs.


## TP - Exercice


### Ajouter des logs à votre script

Lors que vous lancez votre script vous ne "voyez" pas ce qui se passe.

Pour y remédier, une bonne pratique est d'ajouter des logs pour chaque action que vous faîtes en faisant un simple echo.

Updatez votre script, dans cet esprit en ajoutant des logs de type:

```
mon_script.sh - 2019/11/14 15:14:19 - job start
mon_script.sh - 2019/11/14 15:14:20 - start to dump base example01
mon_script.sh - 2019/11/14 15:14:20 - base example01 has been dumped in /data/backup/mysql_db-20191114/exemple01.sql
mon_script.sh - 2019/11/14 15:14:21 - start to dump base example02
mon_script.sh - 2019/11/14 15:14:22 - base example02 has been dumped in /data/backup/mysql_db-20191114/exemple02.sql
mon_script.sh - 2019/11/14 15:14:22 - job done
```


### Créer une fonction pour écrire votre log

Si demain vous voulez changer le format de vos log (par exemple en ajoutant `hostname`)... vous n'allez pas vouloir changer tous les echos de votre script.

Pour faciliter cela, nous allons créer notre première fonction `bash` (cf: [script bash : Fonctions](http://debian-facile.org/doc:programmation:shells:fonction))!

Updatez vos scripts pour que l'output de vos logs soit de la forme suivante:

```
#nom_du_script.sh - hostname - date - message

mon_script.sh - myserver01 - 2019/11/14 15:14:22 - job done
```


## Confirmation

Appelez votre chargé de TP pour confirmer que vous êtes prêt à attaquer la suite.
Vous devez être en mesure:
* d'ajouter des logs d'information dans vos scripts
* de créer des fonctions bash


Question bonus:
* Savez vous ajouter de la couleur dans vos logs? (cf: [les codes de couleurs en bash](http://www.tux-planet.fr/les-codes-de-couleurs-en-bash/)) 
