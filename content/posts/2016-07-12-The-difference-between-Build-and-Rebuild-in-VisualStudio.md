
---
layout : post
category : work
tags : [VisualStudio, Csharp]
title : VisualStudio Build和Rebuild的区别
date : 2016-07-12
---

Rebuild是对Solution下的所有项目，逐个进行 Clean+Build。

Build只是针对有更改过的文件进行编译。

Clean+Build是对选中的项目（如果选中Solution的话，全部Clean之后，再全部Build）先执行Clean再执行Build。
