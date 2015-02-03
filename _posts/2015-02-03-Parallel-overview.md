---
layout : post
category : study
tags : [cpufreq, 降低CPU功耗, 降低功耗]
title : Parallel介绍
---

## What

FSF项目，GNU Parallel，翻译为**平行**

http://www.gnu.org/software/parallel/

## Why

可以替代xargs

## How

不仅可以在本机上平行处理任务，而且还能分散到其他联网电脑上处理。

###参数

`-a/::::` 文件名

`:::`标准输入

`--dryrun`查看将会运行的命令，但是不执行

##Examples

shell编程用

```
seq 10 | parallel echo
seq -w 0 9999 | parallel -X rm pict{}.jpg
ls *.jpg | parallel convert -geometry 120 {} thumb_{}
seq 10 | parallel --sshlogin server.example.com,server2.example.net echo
```
