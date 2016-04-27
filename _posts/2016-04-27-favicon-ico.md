---
layout : post
category : work
tags : [favicon]
title : favicon.ico
---

## 默认放在服务器根目录下<a id="sec-5-9" name="sec-5-9"></a>

如果要换位置，在服务器上可以设置；同时也可以在网页上设置，比如在head部分加入link，比如 \`<link rel="shortcut icon" href=<http://www.example.com/favicon.ico>>\`

## 优化性能<a id="sec-5-10" name="sec-5-10"></a>

### 配置favicon.ico的位置，保证能访问到<a id="sec-5-10-1" name="sec-5-10-1"></a>

### 设置Expire，缓存ico到客户端上，可以设置长一点时间。<a id="sec-5-10-2" name="sec-5-10-2"></a>

### 通过<link>更新缓存<a id="sec-5-10-3" name="sec-5-10-3"></a>

### 保持图片小，一般选用16\*16即可。<a id="sec-5-10-4" name="sec-5-10-4"></a>

## 更新了favicon.ico后在客户端看不到变化怎么办<a id="sec-5-11" name="sec-5-11"></a>

清客户端缓存再访问即可。

## [生成favicon.ico的网站](<http://realfavicongenerator.net>)<a id="sec-5-12" name="sec-5-12"></a>

