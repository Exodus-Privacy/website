---
title: "εxodus static analysis"
date: 2018-08-17T22:42:42+02:00
draft: false
tags: [analysis, reverse-engineering]
---

Статический анализ приложений Android лежит в основе платформы εxodus. Основная идея — обнаружить наличие известных трекеров в приложении, не запуская его. Это связано с тем, что εxodus не может отнимать слишком много времени для каждого анализа, поэтому метод обнаружения должен быть эффективным по времени, воспроизводимым и свободным от ложных срабатываний.

Приложения Android разрабатываются на JVM-совместимых языках, таких как Java, Kotlin и т.д. Программы, работающие на JVM, имеют множество отличий от программ на C или Go, главное из которых заключается в том, что имена классов можно прочесть непосредственно в двоичном файле программы, без декомпиляции. JVM идентифицирует тип по полному имени класса, например `org.exodus.Report`, `org.exodus` — это имя пакета, а `Report` — это имя класса.

Google предоставляет `dexdump` — программу, предназначенную для анализа файлов `.dex`. В мире Java скомпилированный код содержится в файлах `.class` (по одному на каждый класс), в мире Android скомпилированный код хранится в файлах `.dex` (по одному или несколько на каждую программу). Приложение Android содержится в файле `.apk`, который представляет собой подписанный ZIP-архив. Файл `.apk` содержит саму программу (файлы `.dex`) и ресурсы приложения, такие как шрифты, изображения и т.д.

Когда мы запускаем `dexdump` для файла `.apk`, мы получаем вывод, похожий на следующий:

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

Этот вывод непросто понять, но главное в нём - что для каждого класса, объявленного в приложении, у нас есть `Class #x` и `Class descriptor`. Дескриптор класса — это JVM-представление пространств имен приложения (полное имя класса). В этом примере `Class #0` — это `android.databinding.Observable`, где `android.databinding` — имя пакета, а `Observable` — имя объявленного класса.

Мы можем упростить вывод `dexdump`, отобрав из него только дескрипторы классов и отсортировав их:

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

В Java, C++, Python и других языках, пространства имен очень важны, и когда Вы предоставляете библиотеку, Вам необходимо убедиться, что пространство имён библиотеки никогда не конфликтует с другими библиотеками.

εxodus "копается" в файлах `.apk`, чтобы найти трекеры, и эти трекеры могут быть идентифицированы по их собственному пространству имен. Например, корневое `пространство имён/пакет` библиотеки Amazon Ads - это `com.amazon.device.ads`, эта библиотека использует имя пакета `com.amazon` совместно с другими библиотеками Amazon. Таким образом, на данном этапе сигнатура трекера представляет собой пространство имен (имя пакета).

На данный момент εxodus знает [152 трекера](https://reports.exodus-privacy.eu.org/trackers/), и если мы посмотрим на [Flurry](https://reports.exodus-privacy.eu.org/trackers/25/), то увидим правило обнаружения `com.flurry.` что представляет из себя [regex](https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D0%B3%D1%83%D0%BB%D1%8F%D1%80%D0%BD%D1%8B%D0%B5_%D0%B2%D1%8B%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F).
<center>
{{< fig src="/media/post/exodus_static_analysis/flurry.png" caption="Обзор описания трекера Flurry" >}}
</center>

Теперь давайте воспользуемся `grep`, чтобы проверить, содержит ли `my.apk` классы Flurry:

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

Как мы видим, `my.apk` содержит классы Flurry.

Итак, когда вы [отправляете](https://reports.exodus-privacy.eu.org/analysis/submit/) приложение на анализ, εxodus загружает его из Google Play, извлекает файл `.apk`, вызывает `dexdump` для файлов `.dex`, сохраняет отфильтрованный вывод в файле, который будет использоваться при обновлении отчетов для ускорения анализа, берёт правило обнаружения каждого известного трекера и проверяет, совпадают ли имена классов. Если правило обнаружения соответствует одному или нескольким именам классов, мы считаем, что нашли встроенный трекер, если нет, мы считаем, что встроенных трекеров не найдено.

<center>
{{< fig src="/media/post/exodus_static_analysis/static_analysis.png" caption="Обзор процесса статического анализа" >}}
</center>

Если Вы хотите помочь нам улучшить базу знаний εxodus, [свяжитесь с нами](/page/who/) и запросите учётную запись [ETIP](http://etip.exodus-privacy.eu.org/). ETIP — это совместная платформа, предназначенная для облегчения расследований и классификации трекеров.

Если Вы разработчик приложений, Вы можете использовать [exodus-standalone](https://github.com/Exodus-Privacy/exodus-standalone) для анализа своего приложения **перед** его публикацией в Google Play.
