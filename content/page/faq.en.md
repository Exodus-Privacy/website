---
title: "FAQ"
date: 2018-12-28 10:21:06
draft: false
---

# Frequently Asked Questions

#### **What is a tracker?**

AA tracker is a piece of software meant to collect data about you or your usages. You can find more information in our video ["Trackers in 2 minutes"](https://www.youtube.com/watch?v=sv_xF2KIJZE) (in French with subtitles).

#### **What are permissions? How are the severity levels defined?**

Permissions are actions the application can do on your phone. The severity levels are defined according to [Google's protection levels](https://developer.android.com/guide/topics/permissions/overview).

#### **How are the applications analyzed?**

We do not decompile applications, as this is not allowed. We perform a static analysis of APKs and compare Java classes with a list of trackers. If there is a match, then the tracker is present. A more detailed description is available in [this post](/en/post/exodus_static_analysis/).

#### **What about iOS apps?**

Apple's DRMs strictly forbid us to investigate so we can not say. However, the applications of both OS are often made by the same teams or agencies. The suspicions are strong that the trackers of one are also in the other.

#### **Are there any false positives and/or false negatives in your reports?**

Our static detection method looks in applications for the presence of a defined list of trackers. If the signature of a tracker is detected in the analysis, its presence is indicated in the report. This is not a proof of activity of these trackers.

In addition, the application could contain one or more trackers we did not identify yet. We therefore do not guarantee the completeness of this list.

#### **How can I help you?**

There are many ways to help us, everything is explained in the ["Contribute"](/en/page/contribute/) page.

#### **Does the Exodus Privacy Android application embed trackers?**

Of course not, you can see [its own analysis report](https://reports.exodus-privacy.eu.org/en/reports/search/org.eu.exodus_privacy.exodusprivacy/).

### **Why do you have a YouTube channel when this platform belongs to Google?**

The goal of Exodus Privacy is to reach as many people as possible, the least tech-savvy and the most inclined to ignore what's happening in their smartphone. To reach this audience, it is necessary to go to it, because it will not come to us. So we have a YouTube channel and a Facebook page. Do not worry, we also have a Peertube channel.

You can find the links of our different media on [this page](/en/page/what/#videos).
