---
layout : post
category : work
tags : [xen, citrix, 虚拟机]
title : xen客户端无法连上服务 by citrix
date : 2016-06-21
---


运行以下脚本


	#看是否硬盘分区是否已经装满
	df -h

	#进入log目录
	cd /var/log

	#看文件的大小
	du -ksh *.*

	#删除大log文件
	rm *.gz -f

	#重启xapi服务
	service xapi stop
	service xapi start
