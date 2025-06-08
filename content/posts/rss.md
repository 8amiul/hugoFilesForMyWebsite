---
title: "rss feed!"
date: 2025-01-10T00:24:58+06:00
draft: false
tags: ["rss", "website"]
---
rss feed is like a magazine where you can link many favourite webpages which provides a rss.xml thing. So with that you can view all the main contents of those websites without visiting every site.

I didn't know about rss feeds before building this site. I knew that icon on blog pages but never understood what actually rss was.

Now my site also got a rss feed. Hugo, yes that's what I used to generate this static site of mine. So hugo auto generates a rss.xml file that contains everything we need.

But there was a problem at first. By default it wasn't set up properly. On the rss reader my site wasn't rendered correctly.

Just to fix this I had to implement a code in hugo's mytheme/layouts/_default/rss.xml. Well, I didn't bother to understand that code.
It works for me, it doesn't get executed in my system and once again it works for me.

[Code can be found here!](https://gideonwolfe.com/posts/sysadmin/hugo/hugorss/)

I use [feeder](https://github.com/spacecowboy/Feeder) on my phone and on linux I use [newsboat](https://github.com/newsboat/newsboat) to view rss feeds.

