---
title: "Petite étude sur l'impact du RGPD"
date: 2018-11-24 10:01:00
draft: false
---

À l'occasion du [premier anniversaire](https://exodus-privacy.eu.org/post/anniversaire/) de l'ouverture de sa plate-forme d'analyse, a été créé un programme permettant de comparer le nombre de pisteurs présents dans une ou plusieurs applications, avant et après l'entrée en application du RGPD (Règlement Général sur la Protection des Données), le 25 mai 2018. Pour en savoir plus sur celui-ci, nous vous conseillons [cet article de NextInpact](https://www.nextinpact.com/news/106135-le-rgpd-explique-ligne-par-ligne-articles-1-a-23.htm).

Nous avons sélectionné les 85 applications les plus téléchargées dans le monde pour lesquelles nous disposons d'analyses afin d'estimer si l'entrée en application du RGPD a eu un impact sur le nombre de pisteurs présents dans ces applications. Pour réaliser cette petite étude, nous avons choisi de comparer le nombre de pisteurs détectés lors de l'analyse la plus récente avant le 25 mai et le nombre de pisteurs détectés lors de l'analyse la plus récente après le 25 mai. Les applications pour lesquelles aucune analyse n'a été faite avant ou après le 25 mai sont ignorées.

<center>
<a href="/media/Top_downloads-trackers_now.png">
{{< fig src="/media/Top_downloads-trackers_now.png" caption="Application par application, le nombre de pisteurs détectés lors de l'analyse la plus récente pour chacune de ces applications" >}}
</a>
</center> 

Plus en détails, voici, application par application, l'évolution du nombre de pisteurs avant et après l'entrée en application du RGPD.

<center>
<a href="/media/Top_downloads-evolution.png">
{{< fig src="/media/Top_downloads-evolution.png" caption="Application par application, le nombre de pisteurs ajoutés ou supprimés après l'entrée en application du RGPD" >}}
</a>
</center> 

Enfin, une vue plus synthétique de l'évolution de nombre de pisteurs sur l'ensemble des applications étudiées.
<center>
<a href="/media/Top_downloads-worse_or_better.png">
{{< fig src="/media/Top_downloads-worse_or_better.png" caption="Proportion d'applications ayant ajouté des pisteurs depuis le 25 mai, enlevé des pisteurs, n'ayant rien changé" >}}
</a>
</center> 

Vous pouvez reproduire cette analyse grâce à [ce script](https://github.com/Exodus-Privacy/post-gdpr-stats) en utilisant [cette liste d'applications](/media/top_dl.txt).

Vous pouvez également télécharger au format Excel/LibreOffice :

* [l'intégralité de nos rapports](/media/exodus_export_20181121.csv)
* [les rapports des applications ayant au moins une analyse avant et après le 25 mai](/media/exodus_export_20181121_only_pre-post_gdpr.csv)