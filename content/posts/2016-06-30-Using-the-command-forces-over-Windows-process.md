---
layout : post
category : study
tags : [windows, 进程, 命令行 ,强制结束]
title : 利用命令强制结束Windows进程
date : 2016-06-30
---

1.  以管理员身份运行命令行模式
2.  输入 `tasklist` 显示目前的运行状况
3.  输入

    taskkill /IM 进程名 /F
    taskkill /PID 进程ID /F
