---
title: "Quoi"
date: 2018-01-11 17:33:02
draft: false
---

# Ce que fait Exodus Privacy

<div class="row">
  <div class="col-md-4 text-center">
    <img src="/media/logo.png" width="60px" class="mt-3 ml-auto mr-auto"/>
    <div class="card-body">
      <h5 class="card-title">εxodus</h5>
      <p class="card-text">Découvrez les ingrédients du gâteau&nbsp;!</p>
      <a href="https://reports.exodus-privacy.eu.org/" class="btn btn-primary">Accéder à εxodus</a>
      <p class="mt-3"><a href="#exodus">plus de détails</a></p>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-4x fa-android mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title">Application mobile</h5>
      <p class="card-text">Gardez un œil sur votre ordiphone&nbsp;!</p>
      <a href="https://play.google.com/store/apps/details?id=org.eu.exodus_privacy.exodusprivacy" class="btn btn-primary">Google Play</a>
      <a href="https://f-droid.org/en/packages/org.eu.exodus_privacy.exodusprivacy/" class="btn btn-primary">F-Droid</a>
      <p class="mt-3"><a href="#android-app">plus de détails</a></p>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fa fa-4x fa-umbrella-beach mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title">Vulgarisation</h5>
      <p class="card-text">Ouvrez votre esprit avec du contenu agréable&nbsp;!</p>
      <a href="https://video.exodus-privacy.eu.org/video-channels/2ab4458d-0b3c-485a-aeaf-792cd0842bc8/videos" class="btn btn-primary">sur PeerTube</a>
      <a href="https://www.youtube.com/channel/UC2bloZZpnRal5tMVuHk0EFQ" class="btn btn-primary">sur YouTube</a>
      <p class="mt-3"><a href="#videos">plus de détails</a></p>
    </div>
  </div>
</div>

<hr>

<a name="exodus"></a>

## εxodus - la plateforme d’audit de la vie privée des applications Android

εxodus analyse les applications Android dans le but de lister les pisteurs embarqués. Un pisteur est un bout de logiciel dont le but est la collecte de données à propos de vous et de vos usages. Ainsi, les rapports d’εxodus vous révèlent les ingrédients du gâteau. εxodus ne décompile pas les applications, sa technique d’analyse est légale.

Le [site web d’εxodus](http://reports.exodus-privacy.eu.org/) vous permet de :

* rechercher le rapport d’une application Android, grâce à son [moteur de recherche](https://reports.exodus-privacy.eu.org/)
* analyser une application Android en [soumettant son identifiant](https://reports.exodus-privacy.eu.org/analysis/submit/)
* d'obtenir [une liste d'outils et pratiques](https://reports.exodus-privacy.eu.org/fr/info/next/) destinés à mieux maîtriser votre intimité sur mobile

<center>
{{< fig src="/media/report-overview-fr.png" caption="Aperçu d’un rapport" >}}
</center>

Chaque rapport vous indique quels sont les pisteurs embarqués dans l’application. En cliquant sur le nom d’un pisteur, vous serez redirigé vers les détails de ce pisteur et la liste des applications qui l’utilisent. Si la description du pisteur est vide ou incomplète, n’hésitez pas à vous référer au projet [ETIP](https://github.com/Exodus-Privacy/etip/).

<center>
{{< fig src="/media/report-trackers-fr.png" caption="Aperçu de la liste de pisteurs détectés" >}}
</center>

Un rapport vous donne aussi la liste des permissions requises par l’application pour fonctionner correctement sur votre ordiphone. Certaines de ces permissions sont labellisées comme *dangereuse* (*"Dangerous"*), cela signifie que, du point de vue de Google, l’application pourrait faire de *mauvaises choses* en utilisant ces permissions. εxodus utilise la classification des permissions de Google.

<center>
{{< fig src="/media/report-perms-fr.png" caption="Aperçu de la liste des permissions" >}}
</center>

Si vous êtes curieux ou si vous voulez nous aider à améliorer εxodus, vous pouvez ouvrir un ticket ou proposer des améliorations sur le dépôt de notre [projet sur GitHub <i class="fab fa-github"></i>](https://github.com/exodus-privacy/).

<hr>

<a name="android-app"></a>

## L’application Android d’εxodus

Le but de cette application est de lister les applications que vous avez installées depuis Google Play et de vous dire quels pisteurs sont utilisés pour chacune d’entre elles.

<center>
{{< fig src="/media/exodus-app.png" caption="Aperçu de l’application Android d’εxodus" >}}
</center>

L’application ne fait aucune analyse sur votre ordiphone mais va chercher les rapports disponibles sur la [plateforme εxodus](https://reports.exodus-privacy.eu.org) et [ne contient aucun pisteur](https://reports.exodus-privacy.eu.org/reports/search/org.eu.exodus_privacy.exodusprivacy).

<hr>

<a name="videos"></a>

## Supports de vulgarisation

Le but principal d’Exodus Privacy est d’avertir les utilisateurs du pistage fait par les applications mobiles. Pour ce faire, nous avons créé des vidéos de vulgarisation expliquant comment et pourquoi les pisteurs sont présents dans les ordiphones. Ces vidéos sont disponibles sur 2 plateformes :
<div class="row justify-content-md-center">
  <div class="col-md-4 text-center">
    <img src="/media/peertube.svg" height="48px" class="mt-3 ml-auto mr-auto"/>
    <div class="card-body">
      <h5 class="card-title"><code>@exodus</code></h5>
      <a href="https://video.exodus-privacy.eu.org/video-channels/2ab4458d-0b3c-485a-aeaf-792cd0842bc8/videos" class="btn btn-primary">Regardez !</a>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-youtube-square mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>Exodus Privacy</code></h5>
      <a href="https://www.youtube.com/channel/UC2bloZZpnRal5tMVuHk0EFQ" class="btn btn-primary">Regardez !</a>
    </div>
  </div>
</div>

Nous animons également 3 comptes sur les réseaux sociaux :
<div class="row">
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-mastodon mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>@exodus</code></h5>
      <a href="https://framapiaf.org/@exodus" class="btn btn-primary">Suivez-nous !</a>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-twitter mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>@ExodusPrivacy</code></h5>
      <a href="https://twitter.com/ExodusPrivacy" class="btn btn-primary">Suivez-nous !</a>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-facebook-square mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>exodusprivacy</code></h5>
      <a href="https://facebook.com/exodusprivacy" class="btn btn-primary">Suivez-nous !</a>
    </div>
  </div>
</div>
