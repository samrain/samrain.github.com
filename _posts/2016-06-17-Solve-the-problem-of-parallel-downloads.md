---
layout : post
category : study
tags : [下载, webserver, 并行]
title : 解决并行下载问题
---


怪不得很多网站把静态资源放在其他域名上，比如 360buyimg.com 或 sinaimg.cn


因为要解决：并行下载


对于最常见的IE6和IE7在HTTP/1.1中默认每个域名只有2个连接。


为了保证并行下载，可以通过使用多域名来解决。


当然现在有了HTTP/2，这样的情况会慢慢被改善。
