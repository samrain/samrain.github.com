---
layout: default
title: Sam的小窝
tagline: 
---

<ul class="posts">
  {% for post in site.posts limit 5%}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
