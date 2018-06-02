---
layout : post
category : work
tags : [windows, 中文, 中文包]
title : 英文Windows VPS 安装中文包
date : 2015-07-14
---


## Why

国外的VPS和服务器默认安装的服务器系统一般都是英文的Windows 2003 Web版或者Windows 2003 企业版。进去之后是英文的系统，而且由于国外VPS或服务器一般未安装东亚（中国韩国日本等国）语言支持，所以无法正常显示中文，因此我们需要使其支持中文，避免乱码。

## 设置能支持中文软件和网页不乱码

点击`Start`（开始），`contral panel`（控制面板）-`Region and language` 切换到第二个选项卡，勾选安装东亚语言，点击确定。途中会提示你插入光盘，修改路径（比如AWS上就是`C:\WINDOWS\Installation`）点确定，安装完毕之后重启机器。

5分钟之后再去连上VPS，再进`Region and language` 区域语言设置，这时候不要看第二个选项卡了，切换到第一个选项卡，把里面的English改成Chinese（simplified） 下面的改成China。 然后切换到高级Advanced的选项卡，也设置为Chinese，然后重启电脑。

## 设置整个界面显示中文

- 到[以下地址](http://pan.baidu.com/s/1pJt8cdH)下载文件`2003cn.iso`
- 解压文件后双击`MUISETUP.exe`进行安装。途中会提示你插入光盘，修改路径（比如AWS上就是C:\WINDOWS\Installation）点确定，
- 重启然后 点击`Start`（开始），`contral panel`（控制面板）-`Region and language` 把看到的English都修改成China或者Chinese（PRC）。
- 重启即大功告成。
