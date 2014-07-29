---
layout : post
category : work
tags : [不间断, AutoHotkey, 无人值守]
title : 7×24小时不间断运行
---

1.设置AutoHotkey的属性为【以管理员身份启动】

2.设置开机不需要密码登陆系统
`control userpasswords2`

3.修改ahk文件

将第四行从`#n::`改为`::`，这样就可以让AutoHotkey启动时就开始执行脚本。

4.做一个bat文件
`call "AutoHotkey.exe"`

5.新建计划任务，设置每6个小时启动一次，启动脚本为`shutdown -r`
