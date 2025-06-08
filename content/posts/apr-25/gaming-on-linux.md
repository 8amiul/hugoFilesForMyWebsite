---
title: "Gaming on Linux"
date: 2025-04-22T18:42:48+06:00
draft: false
tags: ["gaming", "Linux"]
---

If you want to play games on linux then you have chosen the most hardest path. It's obviously possible to play games on linux but it needs a lot of time, patience and efforts. However most of the online games don't work on Linux. So can't really play any popular online games. There might be workarounds for them but it would be wise to have a windows installed alongside linux.

This would be a quick tutorial that will make your Linux system play Windows games.

# Install Wine & Winetricks

You can download Wine from [here](https://www.winehq.org/).

Or you can just relay on your system's package manager. I suggest you to use your package manager.

```bash
$ sudo apt install wine
```

I used apt as I am on debian 12.

For winetricks. You have to execute the following commands.

```bash
$ wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks 
```
```bash
$ chmod +x winetricks 
```
```bash
$ sudo mv winetricks /usr/local/bin
```

# Install necessary libraries using Winetricks

I might have seen some libraries called DirectX, .Net, VCredist etc. These make games working. So in order to install things like that we use winetricks.

```bash
$ winetricks d3dx10 d3dx9 dotnet35 dotnet40 dotnet45 dotnet48 dxvk vcrun2008 vcrun2010 vcrun2012 vcrun2019 vcrun6sp6
```

Execute this command and install all the mentioned tools.

# Install Lutris

Install lutris using your package manager. But if you don't have lutris there then manually install it by following their [documentation](https://lutris.net/downloads).

For debian,

```bash
$ echo "deb [signed-by=/etc/apt/keyrings/lutris.gpg] https://download.opensuse.org/repositories/home:/strycore/Debian_12/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list > /dev/null
```

```bash
$ wget -q -O- https://download.opensuse.org/repositories/home:/strycore/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/keyrings/lutris.gpg > /dev/null
```

```bash
$ sudo apt update && sudo apt install lutris
```

Finally we are done installing all the tools that are necessary. Now we have to work on lutris in order to play games.

...