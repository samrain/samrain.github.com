---
layout : post
category : ad
tags : [O2O]
title : 如何通过修改文件配置Git远程链接
date : 2014-06-09
---

修改文件`.git/config`，在`[remote "origin"]`一节中将`url=`改为远程链接。例如`url = git@github.com:samrain/samrain.github.com.git`

然后执行`git pull`即可。
