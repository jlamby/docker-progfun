docker-progfun
==============

## Pré-requis

Un hôte avec Docker installé dessus (https://docs.docker.com/installation/).

Pour un fonctionnement optimal, et si c'est hôte est une VM, il faut définir un répertoire partagé qui va etre monté sur /scala dans l'hôte

## Mise en route

Dans un hote avec docker installé . Il faut exécuter le script `00_init.sh`.

Ce script va créer 2 containers : 
- progfun : qui va contenir tout ce qui est nécessaire pour exécuter sbt
- DATAS : quant à lui dédié au stockage des fichiers que sbt et ivy vont générer (typiquement, les dépendances)

Une fois que le script `00_init.sh` a fini de s'exécuter le script `01_start.sh` permet de lancer les containers.
Quand le script rend la main, l'invite de commande se trouve dans le répertoire `/scala` du container sbt.


```

+---------+      +----------------+       +-------------------+
| Windows |      | VM avec Docker |       | Containers Docker |
+---------+      +----------------+       +-------------------+
      ^            ^		^			  |     			  |
      +------------+        |             |  +------------+   |
    C:\xxx        /scala	|			  |	 | DATAS      |   |
                            |             |  +------------+   |
                            |             |      ^     ^      |
                            |      (/root/.ivy2) |     | (/root/.sbt)
                            |             |      |     |      |
                            |             |  +------------+   |
                            +--------------->| ProgFun    |   |
                                (/scala)  |  +------------+   |
                                		  +-------------------+
```
