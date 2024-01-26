---
title: "Что"
date: 2018-01-11 17:33:02
draft: false
---
# Что может Exodus Privacy

<div class="row">
<div class="col-md-4 text-center">
  <img src="/media/logo/exodus.png" width="60px" class="mt-3 ml-auto mr-auto"/>
  <div class="card-body">
    <h5 class="card-title">εxodus</h5>
    <p class="card-text">Присмотритесь что сокрыто под вишенкой на торте!</p>
    <a href="https://reports.exodus-privacy.eu.org/" class="btn btn-primary">Ознакомиться с отчётами</a>
    <p class="mt-3"><a href="#exodus">подробнее</a></p>
  </div>
</div>
<div class="col-md-4 text-center">
  <i class="fab fa-4x fa-android mt-2 ml-auto mr-auto text-primary"></i>
  <div class="card-body">
    <h5 class="card-title">Мобильное приложение</h5>
    <p class="card-text">Приглядывайте за своим смартфоном!</p>
    <a href="https://play.google.com/store/apps/details?id=org.eu.exodus_privacy.exodusprivacy" class="btn btn-primary">Google Play</a>
    <a href="https://f-droid.org/en/packages/org.eu.exodus_privacy.exodusprivacy/" class="btn btn-primary">F-Droid</a>
    <p class="mt-3"><a href="#android-app">подробнее</a></p>
  </div>
</div>
<div class="col-md-4 text-center">
  <i class="fa fa-4x fa-umbrella-beach mt-2 ml-auto mr-auto text-primary"></i>
  <div class="card-body">
    <h5 class="card-title">Популяризация</h5>
    <p class="card-text">Раскройте свой разум с познавательным содержимым!</p>
    <a href="https://www.youtube.com/channel/UC2bloZZpnRal5tMVuHk0EFQ" class="btn btn-primary">YouTube</a>
    <p class="mt-3"><a href="#videos">подробнее</a></p>
  </div>
</div>
</div>

<hr>

<a name="exodus"></a>

## εxodus — платформа для аудита приватности Android-приложений

εxodus исследует Android-приложения на наличие встроенных трекеров. Трекер — это часть программы, которая собирает данные о вас и о том, как вы используете приложение. Таким образом, отчёты εxodus'а раскрывают ингредиенты, из которых разработчик приготовил свой "пирог". εxodus не декомпилирует приложения, а используемая им техника анализа абсолютно легальна.

[Сайт εxodus](https://reports.exodus-privacy.eu.org/) позволит вам:

* [вести поиск](https://reports.exodus-privacy.eu.org/) по отчётам Android-приложений
* [проанализировать](https://reports.exodus-privacy.eu.org/analysis/submit/) Android-приложение, указав его идентификатор

<center>
{{< fig src="/media/page/what/report-overview-en.png" caption="Так выглядит отчёт" >}}
</center>

Отчёт укажет вам, какие трекеры внедрены в приложение. Кликнув по имени трекера, можно узнать о нём подробнее а также в каких ещё приложениях он используется. Если описание трекера отсутствует или неверно, отправьте нам исправление или создайте issue на [Github](https://github.com/exodus-privacy/).

<center>
{{< fig src="/media/page/what/report-trackers-en.png" caption="А так выглядит список найденных трекеров" >}}
</center>

В отчёте также есть список с разрешениями, которые программа запрашивает для своей работы. Некоторые из подобных разрешений отмечены как *опасные*(“Dangerous”). Это значит, что с точки зрения Google, программа, получив такие разрешения, может делать *нехорошие вещи*. εxodus использует классификацию разрешений от Google.

<center>
{{< fig src="/media/page/what/report-perms-en.png" caption="Список найденных разрешений исследуемого приложения" >}}
</center>

Если в вас проснулось любопытство или желание помочь улучшить εxodus, вы можете создать issues или внести улучшения в <a href="https://github.com/exodus-privacy/">наш проект <i class="fab fa-github"></i></a>.

<a name="android-app"></a>

## Приложение εxodus для Android

Предназначение приложения - показывать список приложений, установленных вами из Google Play а также какие трекеры встроены в каждое из них. Приложение εxodus не производит никакого анализа на смартфоне, а только лишь показывает отчёты, доступные через [платформу εxodus](https://reports.exodus-privacy.eu.org) и само [не содержит трекеров](https://reports.exodus-privacy.eu.org/reports/search/org.eu.exodus_privacy.exodusprivacy).
<center>
{{< fig src="/media/page/what/exodus-app.png" caption="Приложение εxodus для Android" >}}
</center>

<a name="videos"></a>

## Популяризация

Основная цель Exodus Privacy — предупредить пользователей о том, что мобильные приложения собирают пользовательские данные. Для этого мы ведём 2 аккаунта в социальных сетях:
<div class="row justify-content-md-center">
<div class="col-md-4 text-center">
  <i class="fab fa-3x fa-mastodon mt-2 ml-auto mr-auto text-primary"></i>
  <div class="card-body">
    <h5 class="card-title"><code>@exodus</code></h5>
    <a href="https://framapiaf.org/@exodus" class="btn btn-primary">Следуй за нами!</a>
  </div>
</div>
<div class="col-md-4 text-center">
  <i class="fab fa-3x fa-facebook-square mt-2 ml-auto mr-auto text-primary"></i>
  <div class="card-body">
    <h5 class="card-title"><code>exodusprivacy</code></h5>
    <a href="https://facebook.com/exodusprivacy" class="btn btn-primary">Следуй за нами!</a>
  </div>
</div>
</div>

Также мы публикуем наглядные видео, объясняющие как и зачем происходит массовый трекинг на смартфонах.
<div class="row justify-content-md-center">
    <div class="col-md-4 text-center">
        <i class="fab fa-3x fa-youtube-square mt-2 ml-auto mr-auto text-primary"></i>
        <div class="card-body">
            <h5 class="card-title"><code>Exodus Privacy</code></h5>
            <a href="https://www.youtube.com/channel/UC2bloZZpnRal5tMVuHk0EFQ" class="btn btn-primary">Смотреть!</a>
        </div>
    </div>
</div>
