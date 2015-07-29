---
layout : post
category : work
tags : [linux, 云主机, Xen]
title : 如何解决客户端无法连接上Xen服务器
---

```

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


```
