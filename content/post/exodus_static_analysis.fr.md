---
title: "L'analyse statique d'εxodus"
date: 2018-08-17T22:42:42+02:00
draft: false
tags: [analyse, reverse-engineering]
---

L'analyse statique des applications Android est au cœur de la plateforme εxodus. L'idée principale est de détecter la présence de _trackers_ connus dans une application sans l'exécuter. En fait, εxodus ne peut pas prendre trop de temps pour chaque analyse, donc la méthode de détection doit être efficace dans le temps, reproductible et exempte de faux positifs.

Les applications Android sont développées dans des langages compatibles JVM comme Java, Kotlin, etc. Les programmes exécutés sur JVM présentent de nombreuses différences par rapport aux programmes C ou Go, la principale étant que les noms de classes sont lisibles directement dans le fichier binaire du programme sans nécessiter de décompilation. JVM identifie un type par son nom de classe pleinement qualifié comme `org.exodus.Report`, `org.exodus` est le nom du package et `Report` est le nom de la classe.

Google fournit `dexdump`, qui est un programme destiné à analyser les fichiers `.dex`. Dans le monde Java, le code compilé est contenu dans des fichiers `.class` (un par classe), dans le monde Android, le code compilé est stocké dans des fichiers `.dex` (un ou plusieurs par programme). Une application Android est contenue dans un fichier `.apk` qui est une archive ZIP signée. Le fichier `.apk` contient le programme d'application (fichiers` .dex`) et les ressources de l'application comme les polices, les images, etc.

Lorsque nous exécutons `dexdump` sur un fichier `.apk`, nous avons une sortie similaire à la suivante :

```
Class #0            -
  Class descriptor  : 'Landroid/databinding/Observable;'
  Access flags      : 0x0601 (PUBLIC INTERFACE ABSTRACT)
  Superclass        : 'Ljava/lang/Object;'
  Interfaces        -
  Static fields     -
  Instance fields   -
  Direct methods    -
  Virtual methods   -
    #0              : (in Landroid/databinding/Observable;)
      name          : 'addOnPropertyChangedCallback'
      type          : '(Landroid/databinding/Observable$OnPropertyChangedCallback;)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      code          : (none)
    #1              : (in Landroid/databinding/Observable;)
      name          : 'removeOnPropertyChangedCallback'
      type          : '(Landroid/databinding/Observable$OnPropertyChangedCallback;)V'
      access        : 0x0401 (PUBLIC ABSTRACT)
      code          : (none)
  source_file_idx   : 25639 (Observable.java)

Class #1            -
  Class descriptor  : 'Landroid/databinding/BaseObservable;'
[...]
```

Cette sortie n'est pas vraiment conviviale mais pour chaque classe déclarée dans l'application, nous avons un `Class # x` et un `Class descriptor`. Le descripteur de classe est la représentation JVM des espaces de nom d'application (nom de classe complet). Dans cet exemple, `Classe # 0` est `android.databinding.Observable` avec `android.databinding` le nom du package et `Observable` le nom de la classe déclarée.

Nous pouvons nettoyer la sortie de `dexdump` en sélectionnant `Class descriptor` et en les triant:

```
$ dexdump my.apk | grep "Class descriptor" | sort | uniq
  Class descriptor  : 'Landroid/databinding/adapters/AbsListViewBindingAdapter;'
  Class descriptor  : 'Landroid/databinding/adapters/AbsListViewBindingAdapter$1;'
  Class descriptor  : 'Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;'
  Class descriptor  : 'Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;'
  Class descriptor  : 'Landroid/databinding/adapters/AbsSeekBarBindingAdapter;'
  Class descriptor  : 'Landroid/databinding/adapters/AbsSpinnerBindingAdapter;'
  Class descriptor  : 'Landroid/databinding/adapters/ActionMenuViewBindingAdapter;'
  Class descriptor  : 'Landroid/databinding/adapters/AdapterViewBindingAdapter;'
  Class descriptor  : 'Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;'
  Class descriptor  : 'Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;'
  Class descriptor  : 'Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;'
  Class descriptor  : 'Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter;'
  Class descriptor  : 'Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;'
  Class descriptor  : 'Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;'
```

En Java, C++, Python et d'autres langages, les espaces de nom sont vraiment importants et lorsque vous fournissez une bibliothèque, vous devez vous assurer que l'espace de nom de la bibliothèque n'entre jamais en conflit avec d'autres bibliothèques.

εxodus "fouille" dans les fichiers `.apk` pour trouver des _trackers_ et ces _trackers_ peuvent être identifiés par leur propre espace de nom. Par exemple, le `name-space/package` racine de la bibliothèque Amazon Ads est `com.amazon.device.ads`, cette bibliothèque partage le nom du package `com.amazon` avec d'autres bibliothèques Amazon. Ainsi, à ce stade, une signature de suivi est un espace de nom (un nom de _package_).

Pour le moment, εxodus connaît [152 _trackers_](https://reports.exodus-privacy.eu.org/trackers/), et si nous regardons [Flurry](https://reports.exodus-privacy.eu.org/trackers/25/), nous avons la règle de détection `com.flurry.` qui est un [regex](https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re).

<center>
{{< fig src="/media/flurry.png" caption="Aperçu de la description Flurry" >}}
</center>

Ainsi, utilisons `grep` pour voir si `my.apk` contient les classes de Flurry :

```
$ dexdump my.apk | grep "Class descriptor" | sort | uniq | grep -E "com.flurry." | head -n 10
  Class descriptor  : 'Lcom/flurry/android/Constants;'
  Class descriptor  : 'Lcom/flurry/android/FlurryAgent;'
  Class descriptor  : 'Lcom/flurry/android/FlurryAgent$1;'
  Class descriptor  : 'Lcom/flurry/android/FlurryAgent$1$1;'
  Class descriptor  : 'Lcom/flurry/android/FlurryAgent$2;'
  Class descriptor  : 'Lcom/flurry/android/FlurryAgent$3;'
  Class descriptor  : 'Lcom/flurry/android/FlurryAgent$Builder;'
  Class descriptor  : 'Lcom/flurry/android/FlurryAgentListener;'
  Class descriptor  : 'Lcom/flurry/android/FlurryEventRecordStatus;'
  Class descriptor  : 'Lcom/flurry/android/FlurryGamingAgent;'
```

Comme nous pouvons le voir, `my.apk` contient des classes de Flurry.

Ainsi, lorsque vous [soumettez](https://reports.exodus-privacy.eu.org/analysis/submit/) une application pour analyse, εxodus la télécharge depuis Google Play, extrait le fichier `.apk`, appelle `dexdump` sur les fichiers `.dex`, stocke la sortie filtrée dans un fichier qui sera utilisé lors de la mise à jour des rapports afin d'accélérer l'analyse, prend la règle de détection de chaque _tracker_ connu et voit si les noms de classe correspondent. Si une règle de détection correspond à un ou plusieurs noms de classe, nous considérons le _tracker_ intégré, sinon, nous le considérons comme manquant.

<center>
{{< fig src="/media/static_analysis.png" caption="Aperçu du processus d'analyse statique" >}}
</center>

Si vous souhaitez nous aider à améliorer la base de connaissances εxodus, [contactez-nous](/fr/page/who/) et demandez un compte [ETIP](http://etip.exodus-privacy.eu.org/). ETIP est une plateforme collaborative destinée à faciliter les investigations et la classification sur les trackers.

Si vous êtes développeur d'applications, vous pouvez utiliser [exodus-standalone](https://github.com/Exodus-Privacy/exodus-standalone) pour analyser votre application avant sa publication sur Google Play.
