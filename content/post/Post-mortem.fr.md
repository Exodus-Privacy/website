---
title: "Deux problèmes techniques et leurs solutions"
date: 2019-02-09 09:01:00
draft: false
---

Le 14 janvier dernier, nous avons eu deux problèmes indépendants l'un de l'autre. Il a tout d'abord été impossible de soumettre l'analyse d'une nouvelle application pendant une journée. Le site a par la suite été inaccessible pendant quelques heures. Il nous paraissait important de vous donner quelques explications, par souci de transparence, vous remercier de votre soutien et, peut-être, vous donner envie de nous rejoindre ?

## Premier problème : la saturation de l'espace de stockage

### Que s'est-il passé ?

Quand vous soumettez l'analyse d'une application, celle-ci est téléchargée sous forme d'un fichier que l'on appelle un APK (Android Package Kit) et stockée sur une machine avant d'être analysée. Les disques de stockage se sont peu à peu remplis, jusqu'à ce que les APK occupent tout l'espace disponible… rendant tout téléchargement impossible et donc bloquant toute nouvelle soumission d'application.

### Comment cela a-t-il pu arriver ?

Nous avons manqué de vigilance (petit rappel : nous sommes toutes et toutes bénévoles !) et malgré plusieurs alertes, nous n'avons rien formalisé par écrit (par mail ou sur Git).

### Pourquoi stocke-t-on tous les APK ?

Nous stockons l'ensemble des APK pour d'éventuels besoins de recalculs, par exemple de signatures.
Par ailleurs, cela nous permet également d'être transparent·e·s : si une personne souhaite contester nos résultats, elle peut télécharger le fichier qui a servi de base à l'analyse.
Enfin, cela peut être nécessaire si jamais un jour nous changeons de modalité d'analyse.

### Qu'avons-nous fait ?

Nous avons rapidement communiqué sur les réseaux sociaux (Mastodon et Twitter) pour annoncer l'impossibilité de soumettre une nouvelle analyse et informer que nous cherchions une solution. La communauté qui nous suit a fait preuve de bienveillance et de compréhension, un grand merci à elle.
Puis nous avons lancé une copie sur une autre machine (merci à Octopuce qui nous offre un espace de stockage) les APK de plus de 6 mois, soit 280Go et 8 heures de transfert ! Une fois copiés, nous avons supprimé ces fichiers sur la machine saturée.
Nous avons annoncé le retour à la normale, avec là encore de bons retours et partages de la part de la communauté.
Pour que cela ne se reproduise pas, nous avons mis en place en urgence un script d'alerte qui envoie un mail aux administrateurs de la plateforme quand la place occupée dépasse 800 Go et allons travailler sur les outils de surveillance de la plateforme avec Munin.

Pour les plus techniques de nos lectrices et lecteurs, voici les commandes passées :

```
# find /home/exodus/storage/exodus -name "*.apk" -mtime +180 > /tmp/filelist.txt
# sed -i 's/^.\//' /tmp/filelist.txt
# rsync -azuP --files-from=/tmp/filelist.txt -e 'ssh -p <port> -i fichier_id' /home/exodus/storage/exodus <machine_cible>:/backups/backupsAPK/.
```

Nous sommes passé·e·s par une liste de fichiers parce que la copie directe en sortie de `find` aurait vite saturé, le `find` étant plus rapide que la copie.

Il faut également supprimer le `./` au début du nom des fichiers, c'est ce que fait la commande `sed`.

Nous avons ensuite supprimé les fichiers APK de plus de six mois du stockage ET de Minio avec l'utilisation de la commande `mc` :

```
mc find /home/exodus/storage/exodus "*.apk" -m6 exec rm -rf {}\;
```

La commande `mc` est installé avec `Minio` et sert à son pilotage _via_ la ligne de commande. Elle sert ici pour informer Minio que les fichiers disparaissent de son champ de vision.
Elle permet d'agir à la fois sur Minio et en local.

Puis nous avons redémarré les services et la plate-fome.

## Deuxième problème : le renouvellement de certificat

### Que s'est-il passé ?

Nous avons un certificat `letsencrypt` qui permet d'avoir une connexion sécurisée en https, (vous savez, le petit cadenas vert à la gauche de l'adresse du site qui vous signale que les communication entre vous et le serveur sont chiffrées).
Nous avons un programme qui renouvelle automatiquement ce certificat, mais il est nécessaire que la configuration du serveur web soit rechargée afin de prendre en compte les nouveaux certificats. Nous ne l'avons pas fait… Ce qui a généré l'indisponibilité du site. Nous avons donc rechargé manuellement la configuration du serveur, puis avons modifié le programme de renouvellement des certificats pour ajouter cette étape.

Voici à quoi ressemble notre script :

```
#!/bin/bash

mkdir /tmp/letsencrypt-auto
letsencrypt renew --webroot -w /tmp/letsencrypt-auto
service nginx reload
```

## En conclusion

Ces problèmes ont permis d'améliorer notre fonctionnement et de faire en sorte qu'ils ne se produisent plus à l'avenir. Nous avons été touché.e.s par les retours, les encouragements des personnes qui nous suivent. Rappelons que nous sommes toutes et tous bénévoles et que si vous avez envie de nous rejoindre, vous êtes les bienvenu·e·s !
