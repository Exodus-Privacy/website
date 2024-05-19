---
title: "Privacy policy"
date: 2022-02-08 12:39:00
draft: false
---

## Privacy Policy (Android)

The Exodus Android application does not collect any personal information.

The application requires the following permissions:

* *ACCESS_NETWORK_STATE*: This permission allows the application to know whether you are connected to the Internet before making any request.
* *REORDER_TASKS*: This permission allows the application to reorder tasks executed during reports and trackers refresh.
* *INTERNET*: This permission is required so that the application can query the reports on the main εxodus instance <https://reports.exodus-privacy.eu.org/>. It is not used for any other purpose.
* *QUERY_ALL_PACKAGES*: This permission allows the application to see all installed applications on your device.
* *POST_NOTIFICATIONS*: This permission allows the application to post notifications. **This permission is only used on Android 13 and above.**

We use PackageManager API to get applications handle (ID of app) from all apps installed (applications installed by the user and enabled on the device).

The application transmits the list of applications handle on the device to the εxodus server. This list is not kept by the server.

The only usage of applications handle is to our API returns only reports about applications installed on the device user.

On the εxodus API server, we keep some information for 16 days, for abuse prevention: IP address, date, time, requested URL and user-agent.

The application does not contain any tracker, you can check it on its report: <https://reports.exodus-privacy.eu.org/en/reports/org.eu.exodus_privacy.exodusprivacy/latest/>
