---
layout : post
category : work
tags : [Chrome, nodejs]
title : 在Chrome中调试nodejs
---


## install<a id="orgheadline34"></a>

安装node-inspector插件

    sudo npm install -g node-inspector

## Getting start<a id="orgheadline35"></a>

    node-debug XXX.js

会自动启动chrome（Chromium）浏览器访问<http://127.0.0.1:8080/debug?port=5858>，这时就可以设置断点进行调试了。

