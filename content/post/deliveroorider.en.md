---
title: "Focus on Deliveroo Rider app"
date: 2019-07-10 09:01:00
draft: false
tags: [focus]
---

We have been contacted last May by [Le MédiaTV](https://lemediatv.fr) as part of an investigation about delivery riders. The journalist wanted to know more about the Deliveroo Rider app (used by the riders) and what types of data it could collect. This incidentally matched our wish to develop in-depth application analysis and publish them on this blog. [The video from Le Média](https://www.youtube.com/watch?v=qW8DmMqO6iE) thus allows us to open this new type of articles in which we offer to detail our method and the full results.

## Our method

The εxodus analysis platform enables you to know how many trackers are in an application. For instance, for [Deliveroo Rider app version 19.06.24_14235](https://reports.exodus-privacy.eu.org/en/reports/80251/) we found 4 trackers. This "static analysis" has two limits :

* It may not detect every present tracker.
* It can't predict the trackers' behavior.

<center>
  <a href="https://reports.exodus-privacy.eu.org/en/reports/84460/">
    <img src="/media/post/deliveroorider/deliverooreportEN.png" caption="Deliveroo rider app report">
  </a>
</center>

That's why we use a free software project named [PiRanhaLysis](https://github.com/PiRanhaLysis), which allows us to do dynamic analysis. As explained in Le Média TV's investigation, the PiRogue module allows us to intercept and observe the data transmitted by the phone while an application is used (here, Deliveroo Rider).

<i class="fas fa-4X fa-hand-point-right"></i>&nbsp;We used a Samsung SM-G361F, with Android 5.1.1. The results may vary depending on the phone or the operating system.

## Our results

The traffic analysis highlights that data is sent to several destinations:

* `Deliveroo`;
* `Appboy`, which has since become Braze, an advertising network
managing client data and marketing;
* `Segment`, a behavior analyzer[^1];
* `Instabug`, a software for sending bugs and crash reports.

Among the data that have been sent, we can find data related to both the device and the application usage, which are sometimes linked to unique identifiers, like the advertisingID[^2] or the Deliveroo courier number.

More precisely, if we take each data transmission (which occurs on a regular basis):

* Deliveroo receives the identifier of the courier, their area, their
availability, which part of the application is used and phone characteristics such as brand, model and battery level;
* Appboy receives the geolocation with a device ID and an API key that enables the use of the deliveroo platform services. This API key is linked to the courier;
* Instabug receives the ID of the courier, their work area, their mobile phone model and some timing data;
* Segment, on the other hand, regularly collects all actions in the application in the form of _events_, as well as the courier's ID (the `userID`),  the advertising identifier (the `advertisingID`), the unique Android identifier (the `id`)[^3] the Mobile Network Operator, the phone model, the screen resolution, if the phone is connected via WiFi…

<center>
  <img src="/media/post/deliveroorider/deliveroosegment.png" caption="data sent to Segment">
</center>

## In conclusion

Through this analysis, we were able to demonstrate that data, including data that could accurately identify a person, was being sent to third party companies through trackers included in the Deliveroo Rider application.

## Acknowledgements

We would like to thank the MediaTV teams who worked with us with undeniable professionalism and we hope that this post will have been of interest to you.
Thanks also to the Piranhalysis project for these analysis tools.

## Now what?

If you have any questions, feel free to [contact us](/en/page/who/) and, particularly, do not forget to [support us](/en/page/contribute/) so that we can continue to produce similar analyses.  In fact, we are going to try to publish these __Focus on…__ on a more or less regular basis.

[^1]: the goal is to understand how users make use of the application in order to improve it

[^2]: this is the advertising ID generated when the phone is connected to Google Play. It is therefore strongly attached to the ownership of the phone. It is nevertheless possible to change it, by going to the phone settings.

[^3]: the Android ID is generated at the first start of Android on the phone and can only be reset with a full phone reset (return to factory settings).
