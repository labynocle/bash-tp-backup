# étape 0: vérifier que tous les requis sont bien là


## Objectifs

L'objectif de cette étape est juste de  s'assurer que vous avez tout ce qu'il faut pour commencer le TP.


## TP - Exercice


### Confirmer que `docker`est bien ok

Vérifier que `docker` est bien installé et prêt à l'emploi:

```
docker run hello-world
```


### Confirmer que `docker-compose` est bien ok

Vérifier que `docker-compose` est bien installé et prêt à l'emploi:


```
docker-compose --version
```


### Démarrer l'architecture pour le TP

Afin de faciliter l'exercice, nous avons créé un `Makefile` (qui vous permettra d'avoir de l'auto-completion dans vos commandes).

Avec le `Makefile`, vous pouvez simplement démarrer l'architecture de cet exercice avec le goal `tp-start`:

```
make tp-start
```

Cette commande va lancer les containers `docker` décrits dans l'architecture

En lançant la commande `docker ps`, vous pouvez constater les containers demarrés.

```
$ docker ps
CONTAINER ID        IMAGE                         COMMAND                  CREATED             STATUS              PORTS                              NAMES
18b07b2dc8c3        docker_bash                   "tail -f /dev/null"      4 seconds ago       Up 3 seconds                                           docker_bash_1
615a2bb500fc        mysql:5.7.28                  "docker-entrypoint..."   5 seconds ago       Up 4 seconds        3306/tcp, 33060/tcp                docker_mysql_1
```

Le but du TP n'étant pas la manipulation de `docker`, nous avons créé un goal du `Makefile`, vous permettant de lancer un script défini dans `./docker/bash/scripts/`:

```
make tp-script CONTAINER=docker_bash_1 SCRIPT=hello_world.sh

# par defaut la valeur de CONTAINER est docker_bash_1, la commande suivante est donc la même:
make tp-script SCRIPT=hello_world.sh
```


### Initialiser le serveur de base de données

Pour le TP, il sera nécessaire d'initialiser la base de données:

```
make tp-initdb
```


### Vérifier que l'import est bien ok

On souhaite s'assurer que l'import de l'étape précédente s'est bien déroulé.

Pour cela il faut depuis le container `bash` tenter de se connecter à la base de données.

Pour entrer dans un container, il y a aussi un goal du `Makefile` pour ça:

```
make tp-container-inside CONTAINER=docker_bash_1

# par defaut la valeur de CONTAINER est docker_bash_1, la commande suivante est donc la même:
make tp-container-inside
```

:information_source: pour quitter le container il suffit d'utiliser la commande `exit`


Une fois dans le container, connectez vous au MySQL avec la commande suivante:

```
mysql -uroot -pmySecretPassWord -h mysql -e "show databases;"
```
explication de la commande:
* `-u` pour spécifier le user pour se connecter
* `-p` pour spécifier le password pour se connecter (c'est vraiment `mySecretPassword`)
* `-h` pour spécifier le host pour se connecter (ce nom est déterminer par notre configuration `docker-compose`)
* `-e` pour spécifier la commande à lancer

Normalement, Vous devriez voir plusieurs bases de données:
* les bases système: `information_schema`, `mysql`, `performance_schema`, `sys`
* les bases que nous avons créé: `exemple01` et `exemple02`


## Confirmation

Appelez votre chargé de TP pour confirmer que vous êtes prêt à attaquer la suite.
Vous devez être en mesure de montrer:
* que les containers tournent bien
* que vous avez bien initialisé la base de données
* que vous savez rentrer et sortir des containers grâce au `Makefile`

Question bonus:
* que pouvez vous dire des droits de `./docker/bash/scripts/hello_world.sh` ?
