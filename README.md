# Bash :: TP Backup

## Objectif

L'objectif de ce TP est d'arriver à créer un script de backup et de restoration pour une les bases de données MySQL.

La construction de ce script `bash`se fera en plusieurs étapes itératives.


## Prérequis

Pour réaliser ce TP, il vous faudra uniquement `docker`.

`docker` est un logiciel libre permettant facilement de lancer des applications dans des conteneurs logiciels (plus de détails sur le [site officiel](https://www.docker.com/) et [Wikipedia](https://fr.wikipedia.org/wiki/Docker_%28logiciel%29)).

Pour installer `docker`, il vous suffira de suivre le [tuto officiel](https://docs.docker.com/install/).

Pour les besoins de l'exercice, nous allons avoir aussi besoin de `docker-compose` que vous pouvez installer en suivant le [tuto officiel](https://docs.docker.com/compose/install/).

## Architecture

... schema ...

un container MySQL avec les bases de données qu'on souhaite sauvegarder
un container qui contiendra les outils pour l'exercice


## TP - Exercices

* [étape 0: vérifier que tous les requis sont bien là](./tp/step_0-check.md)
* [étape 1: faire un script qui dump une base de données](./tp/step_1-dump_db.md)
* [étape 2: ajouter des logs](./tp/step_2-log.md)
