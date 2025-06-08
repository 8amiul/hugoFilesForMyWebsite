---
title: "Life without Spotify"
date: 2025-03-12T13:46:54+06:00
draft: false
tags: ["Music", "Android"]
---

{{< rawhtml >}}
    <style>
    .post-content img, .post-content a img{
        align-self: center;
        max-width: 100%; 
        width: 1000px; 
        height: auto; 
        padding: 0.5rem 1rem 0.5rem 1rem;
    }
    </style>
{{< /rawhtml >}}

Yes, I know spotify is DEAD. Actually it is only dead for pirates. Typical users can use it with ads and limited skips. I know it's hard time for people like us. Man, I ain't gonna pay just to listen music.

Even though [Team-xManager](https://github.com/Team-xManager/) is working so hard to get the spotify patch working again. Hopefully they will be able to make it.

Recently they have published an experimental version of their patch which is based on Spotify version 9.0.24.601.

You can find it on their discord server *"link can be found in their xManager app"* download the xManager app from their [github repo](https://github.com/Team-xManager/xManager) or their [website](https://xmanagerapp.com/). Join their subreddit [here](https://www.reddit.com/r/xManagerApp/)

{{< rawhtml >}}
    <img src="/images/life-without-spotify/discord-screenshot.png" alt="[discord-screenshot]" title="Discord Screenshot">
{{< /rawhtml >}}

Installing one of these should work. But however it's unstable. There are some problems you will face while using it. So it's better to wait until they release a stable one.

 Till then I am using a different music streaming app. I'll list several ways of listening music.

# On Desktop
### Web Browser + uBlock Origin
It's pretty straight forward and I am using this method for listening music on my desktop a year now.

Just download this ad blocker extension [firefox one here](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/). Enable it and login spotify on your web browser. Here is the spotify [web app](https://open.spotify.com/).

Now you can play music without any ads and yes unlimited skipping songs.

{{< rawhtml >}}
    <img src="/images/life-without-spotify/browser_and_adblocker.png" alt="[Browser with ad blocker]" title="Browser with ad blocker">
{{< /rawhtml >}}

### For Windows Only

Use [SpotX](https://github.com/SpotX-Official/SpotX). It patches the original Spotify windows app and makes it working with premium features. Installation is pretty straightforward. Just run the `install.bat` or input that command in your powershell. 

{{< rawhtml >}}
    <img style="width: 500px;" src="https://camo.githubusercontent.com/42d94a270485c8c1c1879593b51ea18900ccc5c455d29f53a312ec493b023384/68747470733a2f2f73706f74782d6f6666696369616c2e6769746875622e696f2f696d616765732f6c6f676f732f6c6f676f2e706e67" alt="[SpotX]" title="SpotX">
{{< /rawhtml >}}


# Audio Ripping
### Soulseek

Well it's not a streaming app. Instead it's a P2P client to download music high quality songs. I will highly suggest you to use this application if you like to store music files on your media player. I still use it whenever I want to download a full album of music. It's an awesome application. [Get Soulseek](http://www.slsknet.org/)

{{< rawhtml >}}
    <img src="/images/life-without-spotify/soulseek.png" alt="[Soulseek]" title="Soulseek">
{{< /rawhtml >}}

### yt-dlp
A tool every linux users have. It can download videos from youtube and many other websites in various formats. If you know basic shell scripting then you can just make an cli app using it. I once made when I was a newbie linux user. [GitHub Repo](https://github.com/yt-dlp/yt-dlp)

{{< rawhtml >}}
    <img  src="https://raw.githubusercontent.com/yt-dlp/yt-dlp/master/.github/banner.svg" alt="[yt-dlp]" title="yt-dlp">
{{< /rawhtml >}}

### Audio ripping sites
- SpotDownloader

I personally use [SpotDownloader](https://spotdownloader.com/). I don't like to bear so much pain installing all those fancy python and pip based tools for downloading music. In order to live a simple life just use what works smoothly. So I use this site whenever I need to go somewhere. I paste my spotify playlist on that site, hit submit and it return a zip file full of songs. Though there is a catch, this downloader can only download first 100 songs from a playlist. So you just have to make multiple playlists with 100 songs if you have more than 100 songs then. Quality? hmm just don't expect that much.

{{< rawhtml >}}
    <img  src="/images/life-without-spotify/spot-downloader.png" alt="[spot-downloader]" title="spotdownloader">
{{< /rawhtml >}}

- cobalt

It's another site to download songs. However I haven't used it that much. Just visit [https://cobalt.tools/](https://cobalt.tools/)

- newalbumreleases.net

A site where you can download music albums with cover arts. It should be an alternative of Soulseek. Here you don't have to worry about sharing files or keeping contribution like Soulseek. Sometimes the server doesn't work so which is a problem.
[It can be found here](https://newalbumreleases.net/)

# On Android

### ViTune/ViMusic
It's the music player I am using currently. From my perspective it's the best free music streaming app for android. It doesn't need any login hassels. It has a very nice algorithm management. No ads. The UI is perfect, better than any other music players listed here. Background playback supported. It can also play local music from device. Badly underrated. Has so many features which I haven't discovered yet. Highly customizable. Can cache songs for offline playback. Also, just around 6MB! [MUST GET ViTune!](https://github.com/25huizengek1/ViTune/releases)

{{< rawhtml >}}
    <img  src="https://raw.githubusercontent.com/25huizengek1/ViTune/master/app/src/main/ic_launcher-playstore.png" style="width: 200px;">
{{< /rawhtml >}}

### Spotube
It's an amazing app where you can stream music by connecting your spotify account. It can scrape all your playlists and spotify information. Sadly it has some issues such as slow streaming and sometimes it fails to load the account and thus make the app unusable. Unfortunately this didn't work for me but for most people it works flawlessly. I found a better alternative so I didn't bother fixing it. [Download Spotube](https://spotube.krtirtho.dev/) | [Github Repo](https://github.com/KRTirtho/spotube)

{{< rawhtml >}}
    <img  src="https://raw.githubusercontent.com/KRTirtho/spotube/master/assets/spotube_banner.png" style="width: 200px;">
{{< /rawhtml >}}

### Metrolist

It's an app that can sync your youtube music profile. It's open source and has a nice UI. I will suggest you to use it if you have playlists on YouTube Music. It also allows you to download songs for offline playback, background playback, lyrics support and many other features. It's freaking underrated I'll say. [Download Metrolist](https://github.com/mostafaalagamy/Metrolist/releases)

{{< rawhtml >}}
    <img  src="https://raw.githubusercontent.com/mostafaalagamy/Metrolist/main/fastlane/metadata/android/en-US/images/icon.png" style="width: 200px;">
{{< /rawhtml >}}


### Musify

It's also an alternative of spotify. The UI was fine. It can play songs from many sources such as it can even play music like videos from YouTube. Does have downloading option though I didn't try. It has lyrics support, sponsorblock support, backup/restore options and etc. [Download Musify](https://github.com/gokadzev/Musify/releases)

{{< rawhtml >}}
    <img  src="https://raw.githubusercontent.com/gokadzev/Musify/master/repository_files/Musify-banner.png" style="width: 500px;">
{{< /rawhtml >}}

### PipePipe/NewPipe

PipePipe is a newer version of NewPipe. NewPipe was extraordinary but sadly with many bugs and glitches. PipePipe is however better than NewPipe. It's exactly not a music streaming tool instead it's a YouTube video streaming app. But it's obvious that you can play music with that also it has a music player mode (I don't know how I missed it). Background music playback is supported, Youtube dislike is back, No freaking ads and many more things. Just use it. But it can't sync with your youtube accounts sadly. It is possilbe but in order to load your profile on this app you have to struggle a bit. Visit the github repo for more information. [Download PipePipe](https://github.com/InfinityLoop1308/PipePipe/releases)

{{< rawhtml >}}
    <img  src="https://raw.githubusercontent.com/InfinityLoop1308/PipePipe/main/assets/logo.png" style="width: 200px;">
{{< /rawhtml >}}

### YouTube Music Revanced

With [Revanced](https://revanced.app/) you can patch many applications, it's not only limited to YouTube. Download this app and download the suggested YouTube Music app version by the app. Then simply patch the YouTube Music using Revanced. It's a must use tool if you hate ads.

{{< rawhtml >}}
    <img  src="https://revanced.app/logo.svg" style="width: 200px;">
{{< /rawhtml >}}

# Music Streaming Sites
### spotfy.one

It's an alternative to spotify but it's a web app. You can create an account on it to save your playlists and data. It doesn't need an account to play songs and it's add free. [Visit spotfy.one](https://spotfy.one/)

{{< rawhtml >}}
    <img  src="https://spotfy.one/storage/branding_media/WoUyZzhnyIzXPkRhKqUW5vKEVxoV1RqvjdQ6k6G7.png" style="width: 200px;">
{{< /rawhtml >}}

### beatbump.io

It's a privacy focused music streaming site. Basic features are no ads, Background playback, does have a nice algorithm for suggesting new songs. [Visit beatbump.io](https://beatbump.io)

{{< rawhtml >}}
    <img  src="https://beatbump.io/logo.svg" style="width: 200px;">
{{< /rawhtml >}}

# On iOS
### Demus

I got no iOS device so couldn't try it. Try Demus it should be on AppStore.

{{< rawhtml >}}
    <img  src="https://demus.app/images/icon.png" style="width: 200px;">
{{< /rawhtml >}}