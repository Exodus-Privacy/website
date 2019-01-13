---
title: "FAQ"
date: 2018-12-28 10:21:06
draft: false
---

# Foire Aux Questions

#### **Qu'est-ce qu'un pisteur ?**

Un pisteur est une partie du logiciel dédiée à la collecte de données sur vous et vos usages. Vous pouvez trouver plus d'informations dans notre vidéo ["Les pisteurs en 2 minutes"](https://www.youtube.com/watch?v=sv_xF2KIJZE).

#### **Que sont les permissions ? Comment sont définis les niveaux de sévérité ?**

Les permissions sont les actions que l'application peut effectuer sur votre téléphone. Les niveaux de sévérité sont définis conformément aux [niveaux de protection de Google](https://developer.android.com/guide/topics/permissions/overview).

#### **Comment sont définies les couleurs (vert / jaune / rouge) dans vos rapports ?**

Des couleurs sont attribuées au nombre de pisteur et de permissions, suivant l'échelle ci-dessous :

* 0 pisteurs / permissions : vert
* < 5 pisteurs / permissions : jaune
* > 5 pisteurs / permissions : rouge

#### **Comment se fait l'analyse des applications ?**

Nous ne faisons pas de décompilation des applications, celle-ci n'étant pas autorisée. Nous faisons une analyse statique des fichiers APK et comparons les noms des classes Java avec une liste de pisteurs. S'il y a correspondance, le pisteur est présent. Une description plus détaillée est disponible dans [cet article](/fr/post/exodus_static_analysis/).

#### **Quid des applications iOS ?**

Les DRM d'Apple nous interdisent formellement d’investiguer donc nous ne saurions le dire. Toutefois, les applications des deux OS sont souvent faites par les mêmes équipes/agences et les SDKs des pisteurs sont souvent disponibles à la fois pour Android et iOS. Les soupçons sont donc forts que les pisteurs de l'un soient aussi dans l'autre.

#### **Y a-t-il des faux positifs et des faux négatifs dans vos rapports ?**

Notre méthode de détection statique cherche dans les applications la présence d'une liste définie de pisteurs. Si la signature d'un pisteur est détectée dans l'analyse, sa présence est indiquée dans le rapport. Cela ne constitue pas une preuve de l'activité de ces pisteurs.

Par ailleurs, l'application pourrait contenir un ou plusieurs pisteurs que nous n'avons pas encore identifiés. Nous ne garantissons donc pas l’exhaustivité de cette liste,

#### **Comment faire si l'on souhaite vous aider ?**

Il y a de nombreuses manières de nous aider, tout est expliqué dans la page ["Contribuer"](/fr/page/contribute/).

#### **L'application Android Exodus Privacy embarque-t'elle des pisteurs ?**

Non, bien sûr, vous pouvez allez voir [son propre rapport d'analyse](https://reports.exodus-privacy.eu.org/fr/reports/search/org.eu.exodus_privacy.exodusprivacy/).

#### **Pourquoi avez-vous une chaîne YouTube alors que cette plateforme appartient à Google ?**

L'objectif d'Exodus Privacy est de toucher le plus grand nombre, les personnes les moins technophile et les plus enclins à ignorer ce qui se passe dans leur ordiphone. Pour toucher ce public, il est nécessaire d'aller à lui, car il ne viendra pas à nous. Nous avons donc une chaîne YouTube et un page Facebook. Rassurez vous, nous avons également une chaîne Peertube.

Vous pouvez retrouver les liens de nos différents supports dans [la page suivante](/fr/page/what/#videos).
