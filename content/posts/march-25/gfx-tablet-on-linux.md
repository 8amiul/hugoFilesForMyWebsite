---
title: "Graphics Tablet on Linux"
date: 2025-03-05T23:09:07+06:00
draft: false
tags: ["Linux"]
---

So how easy it was to make the graphics tablet working on linux? I using Debian found it pretty straightforward! Oh, this tutorial is only for those who are using Xorg NOT WAYLAND!

I believe it's the same for all the distributions. As I am using Debian I will follow the [Debian wiki](https://wiki.debian.org/).

According to [WacomTablets page of the wiki](https://wiki.debian.org/WacomTablets), we get to see that a package is necessary to install for wacom tablets to work on xorg.

Now you might not have a tablet from Wacom, you might have something else. I am using the VEIKK S640. But this method should work for every tablet.

In the `/etc/X11/xorg.conf.d` folder paste these few lines.

```bash
Section "InputClass"
    Identifier "Tablet"
    Driver "wacom"
    MatchDevicePath "/dev/input/event*"
    MatchUSBID "VID:PID"
EndSection
```

But we are not done yet. We have to replace `VID:PID` the with the actual id of the tablet. Let's use the tool `lsusb`

```bash
~ % lsusb
Bus 006 Device 001: ID 1d6b:0003 Linux Found...
Bus 005 Device 002: ID 0a12:0001 Cambridge...
Bus 003 Device 002: ID 046d:c077 Logitech, Inc. Mouse
Bus 001 Device 006: ID 2feb:0001 Beijing Veikk..
```

So at the bottom of the output I have the `VID:PID` which is `2feb:0001`. Just replace it in the `/etc/X11/xorg.conf.d`

After that restarting the xserver might make the tablet working. 