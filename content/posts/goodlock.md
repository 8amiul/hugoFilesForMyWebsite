---
title: "Goodlock"
date: 2023-07-04T14:14:53+06:00
tags: ["Android"]
draft: false
---

My phone has One Ui 4.1 core. Which is crap! None of the GoodLock modules are supported on my phone. But with some tweaking we can achieve this feature. But the phone has to be rooted.

Our First aim is to download the patched version of [GoodLock](https://downloads.corsicanu.ro/GoodLock/ "GoodLock").

Then we have to disable the apk signature verification check. Why do we need that? Just because those apk doesn't come with any signature. But our system looks for one.
So that's why.

Now we have to install,
- Riru magisk module
- Riru Lsposed
- core patch (which is a Lsposed module).
After this we will be able to install the program.

Installing it with the android package manager won't work unfortunately. You need SAI or Split APKs Installer. You can find it in Google PlayStore. Use SAI to install the apk. Also don't forget to set the installer mode to rooted mode. 

Enable Sign APKs option in SAI. If you're lucky then you will be able to open those programs at first attempt.

But if it shows `unsupported version` then. You need to take some more steps.
* Now we have to install Lucky Patcher.
* Then install Lucky Patcher module in Lsposed.
* Inside it go to Toolbox Patch to android

There select first three options. Most probably they will be,
1. Signature verification status
2. Disable signature verification
3. Disable signature verification in the package manager

The first two of them will be selected by Lsposed. You just have to select the third one. Then click apply. Don't forget to restart your phone lest you might not get to see the changes at first.

After going through all of these steps I was able to install most of the GoodLock modules.