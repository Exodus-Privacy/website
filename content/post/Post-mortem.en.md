---
title: "Some technical issues and their solutions"
date: 2019-02-09 09:01:00
draft: false
---

On the 14th of January, it was impossible to submit a new application for analysis on the platform during almost one day. Shortly afterwards, the website was inaccessible during a few hours. The two events were not connected. It's important for us to give you some explanations, because we want to be transparent and, it will maybe convince you to join us.  

## The first issue: the saturation of the storage space

### What happened?

When you submit an application for analysis, the APK (Android Package Kit) is downloaded on a backend computer. The hard drive oh this computer was full. That's why it was impossible to submit new applications for analysis.

### How did it happen?

A lack of attention by the admin (friendly reminder: we all are volunteers), and no alerts on Git nor by email.

### Why are we keeping all the APKs?

 We could need them if we need to recalculate, for example the signatures.
A second reason is transparency: anyone who has a doubt about our result can analyze the same file as us.
And it can be usefull if we change the analysis processus later.

### What was done?

We published on tweeter or mastodon, the community reaction was wonderful. You relayed our outage and stopped immedialty submission. Great thanks to all of you.
Then we start a copy of all the files older than 180 days to another machine. Thanks to Octopuce who give us some disk space. Once the copies ended, we removed the APK older than 180 days.

For the techies, we used those commands:

```
find /home/exodus/storage/exodus -mtime +180 > /tmp/filelist.txt
rsync -azuP --from-file=/tmp/filelist.txt -e 'ssh -p <port>' <machine_cible>:/backups/backupsAPK/
```

We used a filelist file because the `find` output is much faster than any copy command.

```
mc find /home/exodus/storage/exodus "*.apk" -m6 exec rm -rf {}\;
```

We used the command line tool `mc` provided by Minio. Thus the disk was clean and `Minio` informed that the files are not visible anymore.

The day after (the copy took a very long time, more than 8 hours for 280GB of datas), we relaunched the services and made tweet and toot. Once again you were wonderful.

## The second issue: the certificate renewal

### What happened?

We have a `letsencrypt` certificate to get a https connexion (the green padlock just before the website adress, that garantee a secure connexion between you and the server).
A script is automatically renewing the certificate, but we have to reload the web server configuration, to get the new certificates. We didn't do this reloading. That's why the website was unreachable.
We manually reloaded the web server and added this step to the script.

Our script:

```
#!/bin/bash

mkdir /tmp/letsencrypt-auto
letsencrypt renew --webroot -w /tmp/letsencrypt-auto
service nginx reload
```

## To conclude

These issues have improved our operation. We were deeply moved by the support from all the people who follow us. We all are volunteers and if you want to join us, feel free!
