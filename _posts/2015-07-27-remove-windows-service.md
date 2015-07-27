---
layout : post
category : work
tags : [Windows, 服务]
title : 删除Windows服务
---

用`sc.exe`这个Windows命令

开始——运行——cmd.exe，然后输入sc就可以看到了。使用办法很简单：

```
# (如果服务名中间有空格，就需要前后加引号）
sc delete "服务名"  
```
