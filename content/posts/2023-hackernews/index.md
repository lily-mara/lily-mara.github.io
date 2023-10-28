---
title: "hackernews.lilymara.xyz"
date: 2023-10-28T11:14:21-07:00
description: "Top 30 posts on Hackernews, updated daily, get the links without the comment section"
tags: [project]
---

I think that Hackernews is a consistent source of interesting articles to read,
but I like to avoid the comment section for my own piece-of-mind. I also like to
get the content that I care about delivered via RSS, so that I'm not
consistently re-visiting HN (or other sites) for more content. For a while, I've
been relying on [this github
project](https://github.com/meixger/hackernews-daily), which creates a new issue
every day containing the top 30 links posted on Hackernews. You can subscribe to
an RSS feed of github issues (apparently) to get the content delivered directly
to your favorite newsreader. My reader of choice however,
[Omnivore](https://omnivore.app) didn't really seem to like rendering github
issues, so I was always having to fall back to the browser to view them.

So I decided to fork the aforementioned github project, take the "get the top 30
links" script, and use that to power a new hugo site. Since it's my site and not
Github, I can control the rendering and make it as minimal as I want.

The homepage shows the most recent (updated every 24h) top 30 links on HN, and
there's also an archive of all past entries.

Check it out at [hackernews.lilymara.xyz](https://hackernews.lilymara.xyz) or
subscribe to the [rss feed](https://hackernews.lilymara.xyz/index.xml) in your
reader of choice.
