---
title: "Make Your Github Pages Appear on Google"
date: 2025-03-13T22:04:04+06:00
draft: false
tags: ["website"]
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

Making github pages appear on google search is pretty easy.

We have to use Google Search Console for that. It will not only make your site indexed but also it gives you many site monitoring features.

Visit [Google Search Console](https://search.google.com/search-console/welcome)

You have to login with your Google account or if logged in already then switch your Google account to your desired one.

{{< rawhtml >}}
    <img src="/images/posts/github-pages-on-google/google-search-console.png" alt="[google-search-console-screenshot]" title="Google Search Console">
{{< /rawhtml >}}

There is a section called URL prefix. You have to input your website address there (ex: https://8amiul.github.io). Clicking continue will make a page appear looking like this.

{{< rawhtml >}}
    <img src="/images/posts/github-pages-on-google/google-search-console-2.png" alt="[google-search-console-screenshot]" title="Google Search Console">
{{< /rawhtml >}}

There are many sub sections such as HTML file, HTML tag and many other. But I personally have chosen the HTML tag method. It is the easiest one I'll say.

Expanding that HTML tag section will reveal a HTML code that you have to put in your site. Copy it or keep it somewhere cause we will need it later. Hit done and that page should be gone but you can access that page again buy opening the `Search property` tab, your site should be mentioned there.

Now it's time we pasted the code that have copied before in to the header file. As I am using hugo to build this side. My site structure might not be the same for you. Basically the baseof.html which resides at `layouts/_default/` is responsible of giving the site structure.

As the copied tag a meta tag that means we have to put it inside the head element in our website.

My website's pages are divided in separate files. I've files for header (navbar), head, footer etc. So all the code for head element is inside the head.html which resides at `layouts/partials/head.html`.

In simple terms, just make sure this code is presented on all the pages of your site. That will do.

{{< rawhtml >}}
    <img src="/images/posts/github-pages-on-google/google-search-console-3.png" alt="[head.html]" title="head.html">
{{< /rawhtml >}}

Just paste the copied code inside the head tag and try not to keep it at the bottom of the head tag. Now just publish your site on GitHub. After maybe a few days you have to visit the Google Search Console and hit verify. If you've done everything properly then you may see the green light of success.

{{< rawhtml >}}
    <img style="width: 500px;" src="/images/posts/github-pages-on-google/verify_success.png" alt="[head.html]" title="head.html">
{{< /rawhtml >}}

Now you should be able to see your site on Google. If you still don't find then wait a few more days, it should appear.