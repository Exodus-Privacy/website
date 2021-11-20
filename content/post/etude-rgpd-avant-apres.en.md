---
title: "Small study on the impact of the GDPR"
date: 2018-11-24 10:01:00
draft: false
tags: [trackers]
---

On the occasion of the [first anniversary](https://exodus-privacy.eu.org/en/post/anniversaire/) of the opening of its analytical platform was created a program to compare the number of trackers embedded in one or more applications, before and after the implementation date of the GDPR (General Data Protection Regulation) on May 25, 2018.

We have selected the 85 applications the most downloaded in the world for which we have analysis reports in order to estimate whether the implementation of the GDPR had an impact on the number of trackers embedded in these applications. To carry out this small study, we chose to compare the number of trackers detected during the most recent analysis before May 25th and the number of trackers detected during the most recent analysis after May 25th. Applications for which no analysis was done before or after May 25 are ignored.

<center>
<a href="/media/post/etude-rgpd-avant-apres/Top_downloads-trackers_now.png">
{{< fig src="/media/post/etude-rgpd-avant-apres/Top_downloads-trackers_now.png" caption="Application by application, the number of trackers detected during the most recent analysis for each of these applications" >}}
</a>
</center>

In more details, here is, application by application, the evolution of the number of trackers before and after the implementation of the GDPR.

<center>
<a href="/media/post/etude-rgpd-avant-apres/Top_downloads-evolution.png">
{{< fig src="/media/post/etude-rgpd-avant-apres/Top_downloads-evolution.png" caption="Application by application, the number of trackers added or deleted after the application of the GDPR" >}}
</a>
</center>

Finally, a more synthetic view of the evolution of the number of trackers on all the studied applications.
<center>
<a href="/media/post/etude-rgpd-avant-apres/Top_downloads-worse_or_better.png">
{{< fig src="/media/post/etude-rgpd-avant-apres/Top_downloads-worse_or_better.png" caption="Proportion of applications that added trackers, removed trackers or did not change anything after May 25" >}}
</a>
</center>

You can reproduce this analysis using [this script](https://github.com/Exodus-Privacy/post-gdpr-stats) and [this list of applications](/media/post/etude-rgpd-avant-apres/top_dl.txt).

You can also download in the Excel / LibreOffice format:

* [the entirety of our reports](/media/post/etude-rgpd-avant-apres/exodus_export_20181121.csv)
* [the reports of applications with at least one analysis before and after May 25](/media/post/etude-rgpd-avant-apres/exodus_export_20181121_only_pre-post_gdpr.csv)
