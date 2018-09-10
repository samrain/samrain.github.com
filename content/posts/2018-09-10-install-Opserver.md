+++
title = "安装Opserver"
date = 2018-09-10T20:51:30+08:00
tags = ["Opserver, 监控, NET"]
categories = ["work"]
draft = false
+++

1 build报错

需要将其他目录下的【Microsoft.WebApplication.targets】目录复制到【C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v11.0\WebApplications】下

2 build成功后找不到发布目录，于是参考官方文档将项目【Opserver】发布成网站并挂在IIS上。

以下是编译脚本：
`aspnet_compiler /nologo -f -c -v Opserver -p c:/dl/Opserver-overhaul/Opserver/ c:/sites/Opserver`