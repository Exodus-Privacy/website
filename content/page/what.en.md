---
title: "What"
date: 2018-01-11 17:33:02
draft: false
---

# What Exodus Privacy does

<div class="row">
  <div class="col-md-4 text-center">
    <img src="/media/logo.png" width="60px" class="mt-3 ml-auto mr-auto"/>
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
      <a href="https://f-droid.org/en/packages/org.eu.exodus_privacy.exodusprivacy/" class="btn btn-primary">F-Droid</a>
      <p class="mt-3"><a href="#android-app">more details</a></p>
    </div>
  </div>
  <div class="col-md-4 text-center">
    <i class="fa fa-4x fa-umbrella-beach mt-2 ml-auto mr-auto text-primary"></i>
    <div class="card-body">
      <h5 class="card-title">Popularization</h5>
      <p class="card-text">Upgrade your minds with delightful contents!</p>
      <a href="https://video.exodus-privacy.eu.org/video-channels/2ab4458d-0b3c-485a-aeaf-792cd0842bc8/videos" class="btn btn-primary">PeerTube</a>
      <a href="https://www.youtube.com/channel/UC2bloZZpnRal5tMVuHk0EFQ" class="btn btn-primary">YouTube</a>
      <p class="mt-3"><a href="#videos">more details</a></p>
    </div>
  </div>
</div>

<hr>

<a name="exodus"></a>

## εxodus - the privacy auditing platform for Android applications

εxodus analyzes Android applications in order to list the embedded trackers. A tracker is a piece of software meant to collect data about you or your usages. So, εxodus reports tell you what are the ingredients of the cake. εxodus does not decompile applications, its analysis technic is legal.

The [εxodus website](http://reports.exodus-privacy.eu.org/) allows you to:

* look at an Android application report with [its search engine](https://reports.exodus-privacy.eu.org/)
* analyze an Android application by [submitting its identifier](https://reports.exodus-privacy.eu.org/analysis/submit/)
* obtain  [a list of tools and things you can](https://reports.exodus-privacy.eu.org/en/info/next/) do to better manage your privacy on your smartphone

<center>
{{< fig src="/media/report-overview-en.png" caption="Overview of a report" >}}
</center>

Each report will tell you what are the trackers embedded into the application. By clicking on a tracker's name, we will be redirected to the details of the tracker and the list of application using it. If the tracker description is empty or inaccurate, feel free to refer to the [ETIP](https://github.com/Exodus-Privacy/etip/) project.

<center>
{{< fig src="/media/report-trackers-en.png" caption="Overview of the detected trackers list" >}}
</center>
A report will also give you the list of permissions the application requires to correctly operate on your smartphone. Some of these permissions are tagged as *dangerous*, it means that from the Google point of vue, the application can do *bad things* by using this permission. εxodus uses the Google permission classification.

<center>
{{< fig src="/media/report-perms-en.png" caption="Overview of the permissions list" >}}
</center>

If you are curious or want to help us to improve εxodus, you can file issues or submit improvements on our [GitHub project <i class="fab fa-github"></i>](https://github.com/exodus-privacy/).

<hr>

<a name="android-app"></a>

## εxodus Android application

This application is meant to list the applications you have installed from Google Play and tells you what are the trackers used by each application.

<center>
{{< fig src="/media/exodus-app.png" caption="Overview of the εxodus Android application" >}}
</center>

The application does not analyze the installed applications on you smartphone but retrieves the reports available on the [εxodus platform](https://reports.exodus-privacy.eu.org) and [does not contain trackers](https://reports.exodus-privacy.eu.org/reports/search/org.eu.exodus_privacy.exodusprivacy).

<hr>

<a name="videos"></a>

## Popularization supports

Exodus Privacy main interest is to make people aware of the tracking done by mobile applications. To do so, we are creating videos explaining how and why tracking massively occures on smartphones. These videos are available on 2 platforms:
<div class="row justify-content-md-center">
  <div class="col-md-4 text-center">
    <img src="/media/peertube.svg" height="48px" class="mt-3 ml-auto mr-auto"/>
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


We also animate 3 social network accounts:
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
