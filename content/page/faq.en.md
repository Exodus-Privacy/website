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

<style>
a.anchor {
  display: block;
  position: relative;
  top: -5.5rem;
  visibility: hidden;
}
</style>
