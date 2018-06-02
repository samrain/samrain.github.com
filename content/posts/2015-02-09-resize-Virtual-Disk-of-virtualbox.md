---
layout : post
category : work
tags : [virtualbox, 虚拟磁盘]
title : 怎么调整virtualbx的虚拟磁盘大小
date : 2015-02-09
---

## WHY

为了同事做了一个Win7的64位的虚拟机，根据默认设置了动态分配25G空间。结果在实际用的过程中发现空间远远不够，坑爹的VS就要几乎9G了，**受不鸟了**。

##只能扩容了。

##linux宿主机

调整虚拟硬盘大小，运行

```
VBoxManage modifyhd w7x64.vdi --resize 61440
```

- 以上命令也可以在windows宿主机上运行，只要保证在path里面。

- 试过vmdk文件不行，我只成功过vdi文件。

- 最后一个数字以MB为单位，例子里是60G。

##win7虚机

需要把增加的硬盘找到并分配到C盘上：

![调整virtualbx的虚拟磁盘大小](http://samrain.qiniudn.com/resize-vdisk1.jpg)
![调整virtualbx的虚拟磁盘大小](http://samrain.qiniudn.com/resize-vdisk2.jpg)
![调整virtualbx的虚拟磁盘大小](http://samrain.qiniudn.com/resize-vdisk3.jpg)
![调整virtualbx的虚拟磁盘大小](http://samrain.qiniudn.com/resize-vdisk4.jpg)
![调整virtualbx的虚拟磁盘大小](http://samrain.qiniudn.com/resize-vdisk5.jpg)
![调整virtualbx的虚拟磁盘大小](http://samrain.qiniudn.com/resize-vdisk6.jpg)
