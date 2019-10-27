---
title: "Pistons les pisteurs !"
date: 2019-10-27
draft: false
tags: [pisteurs, etip]
---

Une grande partie du travail d'Exodus Privacy est de pister les [pisteurs](https://reports.exodus-privacy.eu.org/fr/info/trackers/), c'est-à-dire trouver et ajouter de nouveaux pisteurs dans notre base de données.

### Le Premier Âge

Nous utilisions une [issue GitHub](https://github.com/Exodus-Privacy/exodus/issues/40) pour faire ce travail  avec l'aide de personnes contributrices. Mais ce système est devenu bien vite difficile à maintenir.

### Le Deuxième Âge

Cela nous a poussé à développer une plate-forme appelée **[ETIP](https://etip.exodus-privacy.eu.org), pour "Exodus Privacy Investigation Platform"**. Nous avons utilisé pour cela `Django`, le même framework que celui utilisé pour la plate-forme εxodus.

#### L'alimentation de la base de données

Tout le monde peut voir la liste des pisteurs présents dans [ETIP](https://etip.exodus-privacy.eu.org). Quiconque pense avoir découvert un nouveau pisteur peut [demander un compte](https://github.com/Exodus-Privacy/etip#contribute-to-the-identification-of-trackers) et créer un profil pour ce nouveau pisteur. Il y a de multiples champs, comme le nom, les signatures d'identification, les catégories, etc. Seuls le nom et le site web sont nécessaires dans un premier temps.

Une partie des pisteurs présents dans notre base de données provient du travail du [Privacy Lab de l'Université de Yale](https://github.com/YalePrivacyLab/tracker-profiles).

#### La vérification

De temps en temps, nous vérifions les nouveaux pisteurs ajoutés à ETIP depuis la dernière mise à jour des pisteurs. Nous essayons alors de compléter le maximum de champs, les vérifions tous, notamment celui du site du pisteur et de sa signature. Pour ce dernier, nous vérifions combien d'applications préalablement analysées par εxodus y correspondent.

Cette vérification se fait manuellement par au minimum deux personnes, ceci afin de ne pas introduire d'erreurs dans la base de données de production d'εxodus.

#### L'intégration

C'est un processus fastidieux, puisque nous créons manuellement chaque nouveau pisteur dans la base de données, avec les informations référencées dans ETIP. Nous avons un projet en cours d'automation via l'utilisation d'une API nouvellement créée pour ETIP.

#### Le recalcul

C'est au tour des ordinateurs de travailler, pendant un processus qui dure une douzaine d'heures. L'ensemble des rapports d'εxodus vont être mis à jour avec la nouvelle liste de pisteurs (ceux déjà connus et les nouveaux).

Concrètement, les classes de chaque application vont être vérifiées et comparées aux nouvelles signatures pour vérifier si des pisteurs sont embarqués.

### Conclusion

L'ensemble de ce travail est quasi-invisible de l'extérieur. Pourtant, **nous ne pourrions pas faire grand chose sans l'aide de la vingtaine de personnes contributrices à ETIP**. Si vous voulez y participer, n'hésitez pas à nous contacter !

Comme pour l'ensemble de nos outils, [le code source d'ETIP](https://github.com/Exodus-Privacy/etip) est libre. Si vous voulez le consulter et l'améliorer, n'hésitez pas !
