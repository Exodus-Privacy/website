---
title: "εxodus static analysis"
date: 2018-08-17T22:42:42+02:00
draft: false
tags: [analysis, reverse-engineering]
---

The static analysis of Android application is the heart of the εxodus platform. The main idea is to detect the presence of known trackers in an application without running it. In fact, εxodus cannot take too much time for each analysis so the detection method has to be efficient in time, reproducible and free of false-positives.

Android applications are developed in JVM compatible languages like Java, Kotlin, etc. Programs running on JVM have numerous differences compared to C or Go programs, the major one is class names are readable directly in the binary file of the program without requiring decompilation. JVM identifies a type by its fully qualified class name like `org.exodus.Report`, `org.exodus` is the package name and `Report` is the class name.

Google provides `dexdump` which is a program meant to parse `.dex` files. In the Java world, compiled code is contained in `.class` files (one per class), in the Android world, compiled code is stored in `.dex` files (one or more per program). An Android application is contained in an `.apk` file which is a signed ZIP archive. The `.apk` file contains the application program (`.dex` files) and application assets like fonts, pictures, etc.

When we run `dexdump` on an `.apk` file, we have such output:
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
This output is not really human-friendly but for each class declared in the application we have a `Class #x` and a `Class descriptor`. The class descriptor is the JVM representation of application name-spaces (fully qualified class name). In this example, `Class #0` is `android.databinding.Observable` with `android.databinding` the package name and `Observable` the name of the declared class.

We can cleanup the `dexdump` output by selecting `Class descriptor` and sorting them:
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

In Java, C++, Python and other languages, name-spaces are really important and when you provide a library, you have to ensure that the library name-space never collides with other libraries.

εxodus digs into `.apk` files to find trackers and these trackers can be identified by their own name-space. As an example, Amazon Ads library root name-space/package is `com.amazon.device.ads`, this library shares the `com.amazon` package name with other Amazon libraries. So, at this point, a tracker signature is a name-space (a package name).

By now, εxodus knows [152 trackers](https://reports.exodus-privacy.eu.org/trackers/) and if we have a look to [Flurry](https://reports.exodus-privacy.eu.org/trackers/25/) we have detection rule `com.flurry.` which is a [regex](https://en.wikipedia.org/wiki/Regular_expression).
<center>
{{< fig src="/media/flurry.png" caption="Overview of the Flurry description" >}}
</center>

So, lets use `grep` to see if `my.apk` contains Flurry's classes
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
as we can see, `my.apk` contains Flurry's classes.

Thus, when you [submit](https://reports.exodus-privacy.eu.org/analysis/submit/) an application for analysis, εxodus downloads it from Google Play, extracts the `.apk` file, call `dexdump` on the `.dex` files, stores the filtered output into a file which will be used during reports update in order to speed up the analysis, takes the detection rule of each known tracker and see if class names are matching. If a detection rule matches one or more class names, we consider the tracker embedded, otherwise, we consider it as missing.

<center>
{{< fig src="/media/static_analysis.png" caption="Overview of the static analysis process" >}}
</center>

If you want to help us to improve the εxodus knowledge base, [contact us](/page/who/) and ask for an [ETIP](http://etip.exodus-privacy.eu.org/) account. ETIP is a collaborative platform meant to ease investigation and classification on trackers.

If you are an application developer, you can use [exodus-standalone](https://github.com/Exodus-Privacy/exodus-standalone) to analyse your application **before** its publication on Google Play.
