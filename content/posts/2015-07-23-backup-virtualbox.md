---
layout : post
category : work
tags : [virtualbox, 备份, 虚拟机]
title : 备份virtualbox虚拟机
date : 2015-07-23
---

## 1.确保虚拟机已经关闭

查看还有没有运行的虚拟机。
```
VBoxManage list runningvms
```


## 2.备份虚拟机

```
 VBoxManage export %虚拟机名称% --ovf20 --manifest -o %备份目录%/XXXX.ova
```
