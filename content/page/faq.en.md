---
title: "FAQ"
date: 2018-12-28 10:21:06
draft: false
---

# Frequently Asked Questions

* [What is a tracker?](#trackers)
* [What are permissions? How are the severity levels defined?](#permissions)
* [How are the colors (green / yellow / red) in your reports defined?](#colors)
* [How are the applications analyzed?](#analyze)
* [What about iOS apps?](#ios)
* [Are there any false positives and/or false negatives in your reports?](#negatives)
* [How can I help you?](#help)
* [Does the Exodus Privacy Android application embed trackers?](#exodus)
* [Why do you have a YouTube channel when this platform belongs to Google?](#youtube)
* [I have an /e/OS smartphone and my App Lounge app can't retrieve εxodus reports, why?](#eos)
* [I'm developing an Android app, why is my name on εxodus?](#gdpr)

---

**What is a tracker?  <a class="anchor" name="trackers"></a>**

A tracker is a piece of software meant to collect data about you or your usages.

An explanatory page is dedicated to this topic on [εxodus](https://reports.exodus-privacy.eu.org/en/info/trackers/).

---

**What are permissions? How are the severity levels defined?  <a class="anchor" name="permissions"></a>**

Permissions are actions the application can do on your phone.

An explanatory page is dedicated to this topic on [εxodus](https://reports.exodus-privacy.eu.org/en/info/permissions/).

---

**How are the colors (green / yellow / red) in your reports defined?  <a class="anchor" name="colors"></a>**

Colors are assigned to the number of trackers and permissions, according to the scale below:

* 0 trackers / permissions: green
* < 5 trackers / permissions: yellow
* >= 5 trackers / permissions: red

---

**How are the applications analyzed?  <a class="anchor" name="analyze"></a>**

We do not decompile applications, as this is not allowed. We perform a static analysis of APKs and compare Java class names with a list of trackers. If there is a match, then the tracker is present. A more detailed description is available in [this post](/en/post/exodus_static_analysis/).

---

**What about iOS apps?  <a class="anchor" name="ios"></a>**

Apple's DRMs strictly forbid us to investigate so we can not say. However, the applications of both OS are often made by the same teams/agencies and the trackers’ SDKs are often available for both Android and iOS. The suspicions are therefore strong that the trackers of one are also in the other.

---

**Are there any false positives and/or false negatives in your reports?  <a class="anchor" name="negatives"></a>**

Our static detection method looks in applications for the presence of a defined list of trackers. If the signature of a tracker is detected in the analysis, its presence is indicated in the report. This is not a proof of activity of these trackers.

In addition, the application could contain one or more trackers we did not identify yet. We therefore do not guarantee the completeness of this list.

---

**How can I help you?  <a class="anchor" name="help"></a>**

There are many ways to help us, everything is explained in the ["Contribute"](/en/page/contribute/) page.

---

**Does the εxodus Android application embed trackers?  <a class="anchor" name="exodus"></a>**

Of course not, you can see [its own analysis report](https://reports.exodus-privacy.eu.org/en/reports/search/org.eu.exodus_privacy.exodusprivacy/).

---

**Why do you have a YouTube channel when this platform belongs to Google?  <a class="anchor" name="youtube"></a>**

The goal of Exodus Privacy is to reach as many people as possible, the least tech-savvy and the most inclined to ignore what's happening in their smartphone. To reach this audience, it is necessary to go to it, because it will not come to us. So we have a YouTube channel and a Facebook page.

You can find the links of our different media on [this page](/en/page/what/#videos).

---

**I have an /e/OS smartphone and my App Lounge app can't retrieve εxodus reports, why?  <a class="anchor" name="eos"></a>**

Maybe we blocked your App Lounge client.

For a few years now, /e/OS servers have been making requests to our API with a key we provided them. However, in October 2024, as /e/'s requests became too large for our servers (and our request to implement a better cache on their side failed), we informed them that this would no longer be possible and gave them several months to migrate (such as selfhosting an instance of εxodus on their premises). Indeed, despite their funding offer, we do not have the human resources or the desire to be a service provider for companies.

Despite this, it was the /e/OS "App Lounge" app store that started making requests to our API, directly from /e/OS smartphones, causing a DDoS of our infrastructure.

On March 6, 2025, we decided to block requests from /e/OS "App Lounge" clients to relieve our servers. Only App Lounge clients are blocked, your address is not banned, and you can still visit the εxodus platform.

---

**I'm developing an Android app, why is my name on εxodus?  <a class="anchor" name="gdpr"></a>**

εxodus analyzes Android apps from the Google Play Store and F-Droid.

If you have provided your name as the developer of the app, it will be publicly displayed on the app page of the aforementioned stores. Also note that if you sign your app with a certificate, the name you provided there will also be publicly displayed.

All this informations are used by εxodus to verify the origin of the applications and are therefore displayed on the pages of each report.

You can, of course, send us a request by email to correct or delete your name. Please note, however, that if you have not changed your name in the aforementioned locations, it will be displayed again during future analyses of your application.

<style>
a.anchor {
  display: block;
  position: relative;
  top: -5.5rem;
  visibility: hidden;
}
</style>
