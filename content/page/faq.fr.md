---
title: "FAQ"
date: 2018-12-28 10:21:06
draft: false
---

# Foire Aux Questions

* [Qu'est-ce qu'un pisteur ?](#pisteurs)
* [Que sont les permissions ? Comment sont définis les niveaux de sévérité ?](#permissions)
* [Comment sont définies les couleurs (vert / jaune / rouge) dans vos rapports ?](#couleurs)
* [Comment se fait l'analyse des applications ?](#analyse)
* [Quid des applications iOS ?](#ios)
* [Y a-t-il des faux positifs et des faux négatifs dans vos rapports ?](#negatifs)
* [Comment faire si l'on souhaite vous aider ?](#aider)
* [L'application Android Exodus Privacy embarque-t'elle des pisteurs ?](#exodus)
* [Pourquoi avez-vous une chaîne YouTube alors que cette plateforme appartient à Google ?](#youtube)
* [J'ai un smartphone avec /e/OS et mon application App Lounge n'arrive plus à accéder aux rapports d'εxodus, pourquoi ?](#eos)
* [Je développe une application Android, pourquoi mon nom figure t-il sur εxodus ?](#gdpr)

---

**Qu'est-ce qu'un pisteur ?  <a class="anchor" name="pisteurs"></a>**

Un pisteur est une partie du logiciel dédiée à la collecte de données sur vous et vos usages.

Une page d'explications y est dédiée sur [εxodus](https://reports.exodus-privacy.eu.org/fr/info/trackers/).

---

**Que sont les permissions ? Comment sont définis les niveaux de sévérité ?  <a class="anchor" name="permissions"></a>**

Les permissions sont les actions que l'application peut effectuer sur votre téléphone.

Une page d'explications y est dédiée sur [εxodus](https://reports.exodus-privacy.eu.org/fr/info/permissions/).

---

**Comment sont définies les couleurs (vert / jaune / rouge) dans vos rapports ? <a class="anchor" name="couleurs"></a>**

Des couleurs sont attribuées au nombre de pisteur et de permissions, suivant l'échelle ci-dessous :

* 0 pisteurs / permissions : vert
* < 5 pisteurs / permissions : jaune
* \>= 5 pisteurs / permissions : rouge

---

**Comment se fait l'analyse des applications ? <a class="anchor" name="analyse"></a>**

Nous ne faisons pas de décompilation des applications, celle-ci n'étant pas autorisée. Nous faisons une analyse statique des fichiers APK et comparons les noms des classes Java avec une liste de pisteurs. S'il y a correspondance, le pisteur est présent. Une description plus détaillée est disponible dans [cet article](/fr/post/exodus_static_analysis/).

---

**Quid des applications iOS ? <a class="anchor" name="ios"></a>**

Les DRM d'Apple nous interdisent formellement d’investiguer donc nous ne saurions le dire. Toutefois, les applications des deux OS sont souvent faites par les mêmes équipes/agences et les SDKs des pisteurs sont souvent disponibles à la fois pour Android et iOS. Les soupçons sont donc forts que les pisteurs de l'un soient aussi dans l'autre.

---

**Y a-t-il des faux positifs et des faux négatifs dans vos rapports ?  <a class="anchor" name="negatifs"></a>**

Notre méthode de détection statique cherche dans les applications la présence d'une liste définie de pisteurs. Si la signature d'un pisteur est détectée dans l'analyse, sa présence est indiquée dans le rapport. Cela ne constitue pas une preuve de l'activité de ces pisteurs.

Par ailleurs, l'application pourrait contenir un ou plusieurs pisteurs que nous n'avons pas encore identifiés. Nous ne garantissons donc pas l’exhaustivité de cette liste,

---

**Comment faire si l'on souhaite vous aider ?  <a class="anchor" name="aider"></a>**

Il y a de nombreuses manières de nous aider, tout est expliqué dans la page ["Contribuer"](/fr/page/contribute/).

---

**L'application Android εxodus embarque-t'elle des pisteurs ?  <a class="anchor" name="exodus"></a>**

Non, bien sûr, vous pouvez allez voir [son propre rapport d'analyse](https://reports.exodus-privacy.eu.org/fr/reports/search/org.eu.exodus_privacy.exodusprivacy/).

---

**Pourquoi avez-vous une chaîne YouTube alors que cette plateforme appartient à Google ?  <a class="anchor" name="youtube"></a>**

L'objectif d'Exodus Privacy est de toucher le plus grand nombre, les personnes les moins technophiles et les plus enclines à ignorer ce qui se passe dans leur ordiphone. Pour toucher ce public, il est nécessaire d'aller à lui, car il ne viendra pas à nous. Nous avons donc une chaîne YouTube et un page Facebook.

Vous pouvez retrouver les liens de nos différents supports dans [la page suivante](/fr/page/what/#videos).

---

**J'ai un smartphone avec /e/OS et mon application App Lounge n'arrive plus à accéder aux rapports d'εxodus, pourquoi ?  <a class="anchor" name="eos"></a>**

Il est possible que nous ayons bloqué votre client App Lounge.

Depuis quelques années des serveurs de /e/OS faisaient des requêtes sur notre API avec une clé que nous leur avions fournit. Cependant en octobre 2024, les requêtes de /e/ devenant trop importantes pour nos serveurs (et notre demande de mettre un meilleur cache de leur côté ayant échouée), nous leur avons indiqué que cela ne serait plus possible et leur avons laissé plusieurs mois pour changer de solution (comme héberger une instance d'εxodus chez eux). En effet, malgré leur proposition de financement, nous n'avons pas les moyens humains ni la volonté d'être prestataire de service pour des entreprises.

Malgré cela, c'est le magasin d'applications "App Lounge" de /e/OS qui s'est mis à faire des requêtes vers notre API, directement depuis les smartphones /e/OS, engendrant un DDoS de notre infrastructure.

Le 6 mars 2025 nous avons donc pris la décision de bloquer les requêtes des clients "App Lounge" de /e/OS afin de soulager nos serveurs. Seuls les clients App Lounge sont bloqués, votre adresse n'est pas bannie et vous pouvez toujours consulter la plateforme εxodus.

---

**Je développe une application Android, pourquoi mon nom figure t-il sur εxodus ?  <a class="anchor" name="gdpr"></a>**

εxodus analyse les applications Android en provenance du Google Play Store et de F-Droid.

Si vous avez indiqué votre nom en tant que personne ayant développé l'application, celui-ci apparaît publiquement sur la page de l'application des magasins précédemment mentionnés. Notez également que si vous signez votre application avec un certificat, le nom que vous y avez renseigné est également public.

Toutes ces informations sont utilisées par εxodus pour vérifier la provenance des applications et sont donc affichées sur les pages de chaque rapport.

Vous pouvez bien sûr nous envoyer une demande de rectification ou suppression de votre nom par mail. Sachez cependant que si vous n'avez pas changé ce nom aux endroits précédement mentionnés, celui-ci sera de nouveau affiché lors de futures analyses de votre application.

<style>
a.anchor {
  display: block;
  position: relative;
  top: -5.5rem;
  visibility: hidden;
}
</style>
