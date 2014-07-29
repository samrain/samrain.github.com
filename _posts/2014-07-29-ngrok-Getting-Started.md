---
layout : post
category : study
tags : [ngrok, 穿透, 代理]
title : 初学ngrok
---

### 官网在此：[ngrok.com](http://www.ngrok.com)

### 源码在此：[github.com/ngrok](https://github.com/inconshreveable/ngrok)

### 前辈高人的中文说明在此：[NGROK 内网穿透利器](http://dorole.com/tag/ngrok/)

### 下面只说我自己试验成功的：

- 启动shell：`./ngrok -log=stdout -config=/home/XXX/ngrok.conf start redmine calibre-server vss SharePoint &`

- 配置文件示例

<script src="https://gist.github.com/samrain/31a4000d5b45d29377a9.js"></script>
