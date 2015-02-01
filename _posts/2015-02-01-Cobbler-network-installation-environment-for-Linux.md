---
layout : post
category : study
tags : [cobbler, 网络安装环境, linux, 安装环境]
title : Cobbler 网络安装环境4Linux
---

## What
官网在此：https://fedorahosted.org/cobbler/
Cobbler是一个快速网络安装linux的服务，而且在经过调整也可以支持网络安装windows。
## How
该工具使用python开发，小巧轻便（才15k行代码），使用简单的命令即可完成PXE网络安装环境的配置，同时还可以管理DHCP，DNS，以及yum包镜像。

Cobbler支持命令行管理，web界面管理，还提供了API接口，可以方便二次开发使用。
## Why
运维自动化的重要性，尤其是对于在服务器数量按几百台、几千台增加的公司而言，单单是装系统，如果不通过自动化来完成，根本是不可想象的。

运维自动化安装方面，早期一般使用人工配置pxe+dhcp+tftp配合kickstart，现在开源工具就多了，如cobbler，OpenQRM和Spacewalk。

## Others
虚拟化+云计算+容器基本上革了它的命了，但是在某些不发达地区还是适用的。
