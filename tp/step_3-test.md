# étape 3: ajouter des tests


## Objectifs

L'objectif de cette étape est d'améliorer le script avec des tests.


## TP - Exercice


### Tester les codes retours

Il existe une variable spéciale `$?` qui permet de savoir si une commande s'est bien passée, comme le montre l'exemple suivant:

```
$ ls /tmpazeaze         # <<<<<<< une commande qui échoue
$ echo $?               # <<<<<<< on affiche le code status de la commande précédente
2
$ ls /tmp               # <<<<<<< une commande qui réussit
$ echo $?               # <<<<<<< on affiche le code status de la commande précédente
0
```

`0` signifie que la commande précédente s'est bien passée et toute autre valeur doit être interprétée comme un fail.

Ajouter après la commande de `mysqldump`, un test pour stopper le script si la commande se passe pas bien.

:information_source: pour stopper le script vous pouvez utiliser la commande `exit`

:information_source: vous pouvez vous inspirer de ce [blog post](https://www.cyberciti.biz/faq/bash-get-exit-code-of-command/)

### Respecter les exit status

Mettez à jour votre script pour qu'il sorte avec un status `1` quand il y a eu un fail dans une commande et `0` quand le script s'est executé sans problème.


## Confirmation

Appelez votre chargé de TP pour confirmer que vous êtes prêt à attaquer la suite.
Vous devez être en mesure:
* d'utiliser des conditions dans vos scripts bash
* de tester les codes retour des fonctions


## La suite

Vous pouvez passer à la suite: [étape 4: archivage et chiffrement](./step_4-archive.md)
