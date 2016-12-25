---
layout : post
category : study
tags : [cwRsync, 同步]
title : 处理cwRsync运行错误
---

cwRsync 4.2在同步的时候会有错误：

uid 4294967295 (-1) is impossible to set on "/cygdriver/..."

或者

gid 4294967295 (-1) is impossible to set on "/cygdriver/..."


如果不想看到提示这些错误

1、可以在命令行加参数 `--no-super`

2、在服务器端的配置文件中添加：

	uid = 0
	gid = 0
	fake super = yes
