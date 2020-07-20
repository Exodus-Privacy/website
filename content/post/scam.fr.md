---
title: "Connaissez-vous les contrefaçons d'applications ?"
date: 2020-06-22 00:01:00
draft: false
---

Les contrefaçons, ou *Scams*, touchent aussi les applications de téléphones mobiles !

Elles ont l'apparence d'une application légitime, mais pourtant elles n'en sont pas. Grâce à nos ami·es de [Defensive Lab Agency](https://defensive-lab.agency/), qui ont développé des outils pour les détecter, faisons le point en détail sur ce sujet.

#### Qu'est-ce que c'est ?

La contrefaçon d'application, ou *scam*, est le fait de **modifier une application sans l'autorisation de la personne qui l'a développée**.  La contrefaçon peut ainsi être publiée, téléchargée et installée en ayant la même apparence (icône, menu, fonctionnalités…) que l'application originale.

#### Pourquoi créer des contrefaçons ?

La création de *scam* peut poursuivre plusieurs buts.

Le premier peut être de supprimer certaines limitations de l'application. C'est le cas, par exemple, d'une application de jeu qui limiterait les personnes ayant la version gratuite de ne faire qu'un certain nombre de parties par jour. La contrefaçon permet ainsi d'avoir accès à toutes les fonctionnalités payantes.

**Mais la création de contrefaçons peut aussi poursuivre des objectifs plus graves**, comme le vol de données, l'accès à des identifiants ou des mots de passe. Ainsi, Defensive Lab Agency a détecté des contrefaçons de gestionnaires de mots de passe, donnant potentiellement accès à des données normalement protégées.

#### Comment sont créées les contrefaçons ?

Une application est un programme, elle est donc constituée de code informatique, appelé code source. Ce code source est ensuite compilé et empaqueté avec les autres éléments composant l'application (images, sons, vidéos…) dans une archive - un APK (Android Package Kit) dans le monde d'Android. Cet APK est ensuite envoyé par la personne ayant développé de l'application vers une plateforme de distribution comme le [Google Play Store](https://play.google.com/) ou [F-Droid](https://f-droid.org/) par exemple.

En téléchargeant cet APK, il est possible de le décompiler (même si en France, ce n'est pas légal car cela porte atteinte à la propriété intellectuelle), c'est à dire récupérer le code-source. Il est alors possible d'opérer des modifications de ce code source pour ajouter, modifier, ou supprimer des fonctionnalités (c'est comme si vous modifiez la recette de cuisine d'un gâteau : vous modifiez le produit final, même s'il y ressemble comme deux gouttes d'eau). Il ne reste plus qu'à re-empaqueter l'application modifiée et la distribuer pour que des utilisateur·ices puissent utiliser cette contrefaçon.

<center>
{{< fig src="/media/scatterscam_big_picture.png" caption="Crédit : Defensive Lab Agency" >}}
</center>

#### Comment Defensive Lab Agency les détecte ?

Chaque application a une signature qui lui est propre. Si le code-source est modifié, même légèrement,  la signature l'est aussi.

Ainsi, Scatterscam, l'outil de détection proposé par Defensive Lab Agency, va télécharger des applications depuis diverses sources (stores applicatifs, sites Web, forums, sites de partages de fichiers, …) et comparer les signatures à celle de l'application légitime. Si elles diffèrent, cela veut dire que c'est une contrefaçon.

#### Est-ce que l'application Android εxodus a des contrefaçons ?

Oui, comme indiqué dans le rapport correspondant sur Scatterscam :

https://scatterscam.defensive-lab.agency/report/orgeuexodus_privacyexodusprivacy/

<center>
{{< fig src="/media/scatterscam_exodus.png" caption="Rapport sur l'application εxodus dans Scatterscam" >}}
</center>

#### Est-ce que c'est marginal ?

Pour l'instant, il n'existe pas de chiffres permettant de mesurer l'ampleur du problème, mais une chose est sûre : ce n'est pas marginal. Defensive Lab Agency a, grâce à son outil Scatterscam effectué des analyses et recensé à ce jour plus de 45000 contrefaçons.

Par exemple, l'application Silence a 48 contrefaçons détectées par Scatterscam :

https://scatterscam.defensive-lab.agency/report/orgsmssecuresmssecure/

#### Comment se protéger ?

Il est conseillé de télécharger et d'installer une application **provenant de sources sûres**, telles que [F-Droid](https://f-droid.org/). Vous pouvez vous aider en allant sur le site Web de la personne développant l'application à la recherche du lien vers l'application officielle.

Les développeuses et développeurs d'applications peuvent aussi se protéger contre la contrefaçon en utilisant [ScatterScam](https://scatterscam.defensive-lab.agency/) (à prix libre pour les projets libres).
