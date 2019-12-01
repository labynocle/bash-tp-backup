# étape bonus: toujours plus?

Quelques questions ouvertes supplémentaires:


## Gestion de la rétention

Les scripts sont souvent appelés par des tâches planifiées (type [cron](https://fr.wikipedia.org/wiki/Cron)).
Du coup au bout de X jours, vous allez générer X archives... pour éviter la saturation, on souhaiterait ne garder
que les 10 dernières archives par exemple.

Mettez à jour votre script pour gérer cette partie.


## Working directory

Que se passe t'il si vous executez votre script de backup 2 fois en parallèle?
Une bonne pratique est de travailler dans un répertoire de travail temporaire et de copier le résultat à la fin à la destination attendue.

Typiquement vous pouvez générer votre archive dans `/data/backup/tmp/tmp-workdir-XfErW/mysql_db-20191114-decrypted.tar.gz.gpg` et Faire après le move dans `/data/backup/mysql_db-20191114-decrypted.tar.gz.gpg`

Le chemin du répertoire temporaire de travail peut être généré par `mktemp` et vous pouvez clean ce répertoire une fois le script fini.

Mettez à jour votre script pour gérer cette partie.
