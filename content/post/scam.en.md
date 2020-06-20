---
title: "Have you heard about app counterfeiting?"
date: 2020-06-22 00:01:00
draft: false
---

Counterfeiting, or *Scams*, also apply to mobile phone apps!

They look like legitimate applications even though they are not. With our friends at [Defensive Lab Agency](https://defensive-lab.agency/) who developed tools designed to detect them, let's take a detailed tour of this topic.

#### What is it?

App counterfeiting, or *scam*, is **modifying an app without the consent of the original developers**. The counterfeit app can then be published, downloaded and installed while looking exactly the same (icon, menu, features…) as the original app.

#### Why create counterfeits?

*Scam* creation can serve different purposes.

It can be in order to delete limitations from the app. For example, let's imagine a gaming app limiting people playing the free version to a certain number of games each day. A counterfeit could allow access to all the paying features.

**But counterfeiting can also serve more serious purposes**, like data theft or access to credentials. In this regard, Defensive Lab Agency detected counterfeits of password managers. This could give access to data that is normally protected.

#### How are counterfeits created?

An app being a program, it is made of computer code, called source code. This source code is then compiled and packaged with the other elements constituting the app (images, sounds, videos…) in an archive file: an APK (Android Package Kit) in the Android world. Afterwards, this APK is sent by the app developer to a distribution platform like the [Google Play Store](https://play.google.com/) or [F-Droid](https://f-droid.org) for instance.

When downloading the APK, it is possible to decompile it, in other words, get the source code (even if it is illegal in some countries because it violates intellectual property). One can then modify this source code to add, change or delete features. It's like modifying a recipe for a cake: you're changing the final product even if the cake looks exactly the same. All that's left is to repackage the modified app and distribute it so users can use the counterfeit app.

<center>
{{< fig src="/media/scatterscam_big_picture.png" caption="Credits: Defensive Lab Agency" >}}
</center>

#### How does Defensive Lab Agency detect them?

Every app has its own signature. If the source code is ever so slightly modified, the signature changes too.

Scattercam, the detection tool offered by Defensive Lab Agency, works this way: it downloads apps from several sources (app stores, websites, forums, filesharing sites…) and compares the signatures to the one from the legitimate app. If they are not the same, it means the app is counterfeit.

#### Are there any counterfeits of the Android εxodus app?

Yes, as the report on Scatterscam shows:

https://scatterscam.defensive-lab.agency/orgeuexodus_privacyexodusprivacy

<center>
{{< fig src="/media/scatterscam_exodus.png" caption="Report for the app εxodus on Scatterscam" >}}
</center>

#### Is it negligible?

As of today, there are no data which allow us to measure the extent of this problem, but we can be sure of one thing: it's not negligible. Thanks to Scatterscam, Defensive Lab Agency has analyzed and identified more than 45,000 counterfeits.

For example, Scatterscam detected 48 counterfeits for the Silence app:

https://scatterscam.defensive-lab.agency/orgsmssecuresmssecure

#### How can I protect myself?

It is advised to download and install only apps **coming from trusted sources** such as [F-Droid](https://f-droid.org/). You can look for a link to the official app on the app developer's website to make it easier.

App developers can also protect themselves from counterfeiting by using [ScatterScam](https://defensive-lab.agency/fr/products/scatterscam/) (pay-what-you-want for free software projects).
