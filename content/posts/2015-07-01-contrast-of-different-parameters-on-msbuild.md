---
layout : post
category : work
tags : [msbuild, 参数, 编译, 发布]
title : msbuild参数效果对比
date : 2015-07-01
---

## 结论

加`/m`的效果明显,而加`/p:BuildlnParallel=true`,并不明显.

## 试验数据

以下是在一台虚拟机上的测试结果,分配了4个CPU,4G内存

基本指令如下:

`MSBuild %dir-of-code%%name-of-sln% /nologo /noconlog /m /p:BuildlnParallel=true /t:Rebuild /p:Configuration=Release /fl /flp:errorsonly;Append;logfile=%filename-of-log%`

### 1. 参数为: /m /p:BuildlnParallel=true

> 19:06:52.71 【Rebuild UIAS.sln】start

> 19:10:56.73 【Rebuild UIAS.sln】end

### 2. 参数为: /m

> 19:15:12.29 【Rebuild UIAS.sln】start

> 19:19:03.32 【Rebuild UIAS.sln】end

### 3. 没有参数

> 19:23:30.20 【Rebuild UIAS.sln】start

> 19:28:03.62 【Rebuild UIAS.sln】end

