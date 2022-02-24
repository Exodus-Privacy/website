---
title: "Tracking trackers"
date: 2019-10-27
draft: false
tags: [trackers, etip]
---

A big part of Exodus Privacy job is tracking [trackers](https://reports.exodus-privacy.eu.org/en/info/trackers/). In other words, we have to find and add new trackers in our database.

### The First Age

We used to do that job in [a GitHub issue](https://github.com/Exodus-Privacy/exodus/issues/40)  with the help of many contributors, but it became quickly very hard to maintain.

### The Second Age

This led us to the development of a simple platform named **[ETIP](https://etip.exodus-privacy.eu.org), for "Exodus Tracker Investigation Platform"**. This platform was built using `Django`, the same framework we use for the εxodus platform.

#### How does it work

Everyone can look at the list of trackers present in [ETIP](https://etip.exodus-privacy.eu.org). Anyone who has evidence of a new tracker can [request an account](https://github.com/Exodus-Privacy/etip#contribute-to-the-identification-of-trackers) and then create a profile for the new tracker. There are many fields such as a name, signatures to identify the tracker, categories, etc. Only the name and the website are firstly required.

A lot of the trackers we have in our database comes from the work of [the Yale Privacy Lab](https://github.com/YalePrivacyLab/tracker-profiles).

#### The check process

From time to time, we decide to check the new trackers added to ETIP since the previous time we updated the production database. We check the  website, try to fill most of the fields, check the code signature (by looking at how many applications already in εxodus match with the new pattern), and so on.

It's a manual job taking a lot of time. We always check with a minimum of two people to be sure we do not introduce mistakes in the production database of εxodus.

#### The integration

This is currently a tedious manual process as we create them in the εxodus database by hand with the information we take from ETIP. We have an ongoing project to automate this with the use of a newly created API for ETIP.

#### The recalculation

Then it's time for the computer to work, during a long amount of time (currently approximately 12 hours). ALL the reports from εxodus will be updated with the new list of trackers (the previously known ones and the new ones).

Concretely the script will check in the list of classes for each application if the new code signatures are present.

### Conclusion

All this part is almost invisible for people from the outside. **We couldn't do anything without the help of about 20 trackers contributors**. If you want to be part of the chasing team, feel free to drop us a line.

As usual, [ETIP source code](https://github.com/Exodus-Privacy/etip) is available and could be improved. Feel free to step in! :)
