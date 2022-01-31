---
title: "Focus sur l'application Deliveroo Rider"
date: 2019-07-10 09:01:00
draft: false
tags: [focus]
---

Nous avons été contacté⋅e⋅s  en mai dernier par [Le MédiaTV](https://lemediatv.fr) dans le cadre d'une enquête autour des coursier⋅e⋅s à vélo. Le journaliste souhaitait en savoir plus sur l'application Deliveroo Rider (utilisée par les coursier⋅e⋅s) et quels types de données celle-ci pouvait collecter. Cela correspondait aussi par ailleurs à notre souhait de développer des analyses approfondies d'application et de les publier sur ce blog. [La vidéo du Média](https://youtu.be/vASAMVRiy8s?t=1725) nous permet donc d'inaugurer ce nouveau type d'articles, avec lequel nous vous proposons de détailler la méthode et les résultats complets.

## Notre méthode

La plate-forme d'analyse εxodus permet de connaître le nombre de pisteurs dans une application. Ainsi, pour [la version 19.06.24_14235 de l'application Deliveroo Rider](https://reports.exodus-privacy.eu.org/fr/reports/80251/), nous avons détecté 4 pisteurs. Cette analyse, dite «&nbsp;statique&nbsp;» a une double limite :

* Il se peut qu'elle ne détecte pas tous les pisteurs présents ;
* Elle ne peut pas préjuger du comportement des pisteurs.

<center>
  <a href="https://reports.exodus-privacy.eu.org/fr/reports/84460/">
    <img src="/media/post/deliveroorider/deliverooreport.png" caption="le rapport d'analyse de Deliveroo rider">
  </a>
</center>

C'est pourquoi nous utilisons le travail d'un projet libre intitulé
[PiRanhaLysis](https://github.com/PiRanhaLysis) qui permet de faire de l'analyse dynamique. Comme expliqué dans l'enquête du Média TV, l'analyse avec le boîtier PiRogue permet d'intercepter et d'observer les données transmises par le téléphone, pendant l'utilisation d'une application (ici, Deliveroo Rider).

<i class="fas fa-4X fa-hand-point-right"></i>&nbsp;Le téléphone utilisé ici est un Samsung SM-G361F, sous Android 5.1.1. Les résultats d'analyse peuvent bien sûr varier en fonction du téléphone utilisé et de son système d'exploitation.

## Nos résultats

L'analyse du trafic met en évidence des envois de données vers plusieurs destinations :

* `Deliveroo` ;
* `Appboy`, devenu depuis Braze, une régie publicitaire un gestionnaire de données client⋅e⋅s et de marketing ;
* `Segment`, un analyseur de comportement[^1] ;
* `Instabug` un logiciel permettant d'envoyer rapports de bugs et crashs.

Parmi les données envoyées, nous trouvons à la fois des données relatives au téléphone et à l'usage qui est fait de l'application, parfois liées à des identifiants uniques, comme l'advertisingID[^2] ou le numéro Deliveroo du coursier ou de la coursière.

Plus précisément, si on reprend chaque envoi de données (qui interviennent de façon régulière) :

* à Deliveroo sont envoyés l'identifiant du coursier ou de la coursière, sa zone de travail, sa disponibilité, quelle partie de l'application est utilisée et des éléments du téléphone comme la marque, le modèle et le niveau de batterie ;
* à Appboy est envoyée la géolocalisation avec un identifiant de périphérique et une clef d'api qui permet d'utiliser les services de
plateforme deliveroo. Cette clef d'api est liée au coursier ou à la coursière ;
* à Instabug, avec l'identifiant du coursier ou de la coursière, sa zone de travail, son modèle de téléphone, sont envoyées des données relatives à une durée ;
* Segment, quant à lui, collecte régulièrement toutes les actions dans l'application sous forme d' _events_, ainsi que l'identifiant du coursier ou de la coursière (l'`userID`), l'identifiant publicitaire (l'`advertisingID`), l'identifiant unique Android (l'`id`) [^3], l'opérateur téléphonique (le `carrier`), le modèle de téléphone, la résolution de l'écran, si le téléphone est connecté en WiFi…

<center>
  <img src="/media/post/deliveroorider/deliveroosegment.png" caption="les données envoyées à Segment">
</center>

## En conclusion

Par cette analyse, nous avons pu démontrer que des données, y compris certaines permettant d'identifier une personne avec précision, partaient chez des sociétés tierces par le biais de pisteurs inclus dans l'application Deliveroo Rider.

## Remerciements

Nous tenons à remercier les équipes du MédiaTV qui ont travaillé avec nous avec un professionnalisme indéniable et nous espérons que ce billet vous aura intéressé.
Merci également au projet Piranhalysis pour ces outils d'analyse.

## Et maintenant ?

Si vous avez des questions, n'hésitez pas à [nous contacter](/fr/page/who/) et surtout, n'oubliez pas de [nous soutenir](/fr/page/contribute/) pour que nous puissions continuer à développer de telles analyses. En effet, nous allons essayer de publier ces __Focus sur…__ à intervalles plus ou moins réguliers.

[^1]: le but est de comprendre comment les utilisateurs se servent de l'application pour améliorer cette dernière

[^2]: il s'agit de l'identifiant publicitaire ou advertisingID généré au moment où le téléphone est relié à un Google Play. Il est donc fortement attaché à la propriété du téléphone. Il est néanmoins possible de le changer, en allant dans les paramètres du téléphone.

[^3]: l'identifiant Android est généré au premier démarrage d'Android sur le téléphone et ne peux etre réinitialisé qu'avec une remise à zéro du téléphone (retour aux paramètres d'usine).
