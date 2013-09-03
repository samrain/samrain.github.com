---
layout : post
category : tech
tags : [耳放, linux, 音乐, 驱动, MDAD Mini]
title : 耳放MDAD Mini满血复活
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIMk01bnlmVXowMms/edit?usp=sharing)

原本在Ubuntu1204上活蹦乱跳的，但是自从装了Lubuntu以后就歇菜了，曾经试图搞搞但是未果。后来事情太多就不弄了。
上周末晚脑抽就想试试看，结果试了半个多小时终于成功了。

步骤如下：

* `sudo apt-get install pavucontrol`
* 运行 `pavucontrol`，选择MDAC Mini设备即可


原因：

系统都是使用pulseaudio。alsa等都当成pa的一个模拟子集了。amixer那套，获取不到设备控制权了。pavucontrol 才是声音控制命令
