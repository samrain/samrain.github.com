---
layout : post
category : work
tags : [缩小, html, css, javascript]
title : 缩减HTML、CSS和JavaScript的大小
---

##缩减HTML的大小

使用[PageSpeed Insights Chrome](https://developers.google.com/speed/docs/insights/using_chrome?hl=zh-CN)扩展功能来生成优化版HTML代码。对HTML页面进行分析，然后浏览“缩减HTML的大小”规则。点击“查看经过优化的内容”，以获取经过优化的HTML代码。

##缩减CSS的大小

使用[YUI Compressor](http://developer.yahoo.com/yui/compressor/)和[cssmin.js](http://www.phpied.com/cssmin-js/)。

##缩减JavaScript的大小

使用[Closure Compiler](https://developers.google.com/closure/compiler?hl=zh-CN)、[JSMin](http://www.crockford.com/javascript/jsmin.html)或[YUI Compressor](http://developer.yahoo.com/yui/compressor/)。您可以创建一个使用这些工具的构建流程，以便缩减开发文件的大小并对其进行重命名，然后将其保存到正式版目录。
