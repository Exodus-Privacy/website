---
title: "What"
date: 2020-07-23 17:45:00
draft: false
---

# What Exodus Privacy does

<div class="row">
  <div class="col-md-4 text-center">
    <img src="/media/logo/exodus.png" width="60px" class="mt-3 ml-auto mr-auto"/>
    <div class="card-body">
      <h5 class="card-title">εxodus</h5>
      <p class="card-text">Discover the ingredients of the cake!</p>
      <a href="https://reports.exodus-privacy.eu.org/" class="btn btn-primary">Access εxodus</a>
      <p class="mt-3"><a href="#exodus">more details</a></p>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-4x fa-android mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title">Mobile app</h5>
      <p class="card-text">Keep an eye on your smartphone!</p><br>
      <a href="https://play.google.com/store/apps/details?id=org.eu.exodus_privacy.exodusprivacy" class="btn btn-primary">Google Play</a>
      <a href="https://f-droid.org/packages/org.eu.exodus_privacy.exodusprivacy/" class="btn btn-primary">F-Droid</a>
      <p class="mt-3"><a href="#android-app">more details</a></p>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fa fa-4x fa-umbrella-beach mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title">Learn more</h5>
      <p class="card-text">Learn more about the issue with some nice videos!</p>
      <a href="https://video.exodus-privacy.eu.org/video-channels/2ab4458d-0b3c-485a-aeaf-792cd0842bc8/videos" class="btn btn-primary">PeerTube</a>
      <a href="https://www.youtube.com/channel/UC2bloZZpnRal5tMVuHk0EFQ" class="btn btn-primary">YouTube</a>
      <p class="mt-3"><a href="#videos">more details</a></p>
    </div>
  </div>
</div>

<hr>

<a name="exodus"></a>

## εxodus - the Privacy Auditing Platform for Android Applications

εxodus analyses Android applications. It looks for embedded trackers and lists them. A tracker is a piece of software meant to collect data about you or what you do. In a way, εxodus reports are a way of knowing what really are the ingredients of the cake you are eating. εxodus does not decompile applications, its analysis technique is entirely legal.

The [εxodus website](http://reports.exodus-privacy.eu.org/) lets you:

* check an Android application report using the [search engine](https://reports.exodus-privacy.eu.org/)
* analyse a new Android application by [requesting analysis](https://reports.exodus-privacy.eu.org/analysis/submit/)
* go further, providing [a list of tools and things you can do](https://reports.exodus-privacy.eu.org/en/info/next/) to improve your privacy on your smartphone

<center>
{{< fig src="/media/page/what/report-overview-en.png" caption="Overview of a report" >}}
</center>

Each report will tell you what trackers are embedded into the application. By clicking on a tracker's name, you will be taken to a page showing more details on this tracker as well as the list of applications using it. If the tracker description is empty or inaccurate, please feel free to refer to the [ETIP](https://github.com/Exodus-Privacy/etip/) project.

<center>
{{< fig src="/media/page/what/report-trackers-en.png" caption="Overview of the list of detected trackers" >}}
</center>
A report will also give you the list of permissions the application requests to operate on your smartphone. Some of these permissions are tagged as *dangerous*. This means that from Google's point of view, the application can do *bad things* using this permission. εxodus uses the Google permission classification.

<center>
{{< fig src="/media/page/what/report-perms-en.png" caption="Overview of the list of permissions" >}}
</center>

We wrote some educational articles to inform smartphone users about trackers and permissions and give them some tools to better manage their privacy. You can read them in the [Better understand](https://reports.exodus-privacy.eu.org/en/info/understand/) page of the εxodus platform.

If you are curious or want to help us to improve εxodus, you can file issues or submit improvements on our [GitHub project <i class="fab fa-github"></i>](https://github.com/exodus-privacy/).

<hr>

<a name="android-app"></a>

## εxodus Android Application

Our application is designed **to list the applications already installed on your mobile phone** (both from [Google Play](https://play.google.com/store) or [F-Droid](https://f-droid.org/)) and report the trackers embedded in each application.

The application is available on [F-Droid](https://f-droid.org/packages/org.eu.exodus_privacy.exodusprivacy/) and [Google Play](https://play.google.com/store/apps/details?id=org.eu.exodus_privacy.exodusprivacy).

<div class="row">
  <div class="col-md-6 text-center">
  {{< fig src="/media/page/what/exodus-app-en-1.png" caption="Overview 1 of the εxodus Android application - List of installed applications" >}}
  </div>
  <div class="col-md-6 text-center">
  {{< fig src="/media/page/what/exodus-app-en-2.png" caption="Overview 2 of the εxodus Android application - Tracker details for an application" >}}
  </div>
</div>

The application does not analyse the applications installed directly on your smartphone, instead it retrieves the reports already available on the [εxodus platform](https://reports.exodus-privacy.eu.org). Of course, the εxodus application itself [does not contain any trackers](https://reports.exodus-privacy.eu.org/reports/search/org.eu.exodus_privacy.exodusprivacy).

<hr>

<a name="videos"></a>

## Outreach: Learn More

The main goal of Exodus Privacy is to raise awareness of the extent of tracking by and in mobile applications. To this end, we have created videos explaining how and why tracking massively occurs on smartphones. You can watch these videos on 2 platforms:
<div class="row justify-content-md-center">
  <div class="col-md-4 text-center">
    <img src="/media/logo/peertube.svg" height="42px" class="mt-3 ml-auto mr-auto"/>
    <div class="card-body">
      <h5 class="card-title"><code>@exodus</code></h5>
      <a href="https://video.exodus-privacy.eu.org/video-channels/2ab4458d-0b3c-485a-aeaf-792cd0842bc8/videos" class="btn btn-primary">Watch!</a>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-youtube-square mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>Exodus Privacy</code></h5>
      <a href="https://www.youtube.com/channel/UC2bloZZpnRal5tMVuHk0EFQ" class="btn btn-primary">Watch!</a>
    </div>
  </div>
</div>

You can also find us on 3 social networks:
<div class="row">
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-mastodon mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>@exodus</code></h5>
      <a href="https://framapiaf.org/@exodus" class="btn btn-primary">Follow us!</a>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-twitter mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>@ExodusPrivacy</code></h5>
      <a href="https://twitter.com/ExodusPrivacy" class="btn btn-primary">Follow us!</a>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fab fa-3x fa-facebook-square mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title"><code>exodusprivacy</code></h5>
      <a href="https://facebook.com/exodusprivacy" class="btn btn-primary">Follow us!</a>
    </div>
  </div>
</div>
