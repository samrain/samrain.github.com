+++
title = "递归查询某个目录下的某种文件并输出为全路径文件名"
date = 2018-09-11T12:16:33+08:00
tags = ["PowerShell,Windows,file name"]
categories = ["work"]
draft = false
+++

        Get-ChildItem -Recurse *.dll -path c:\test|%{$_.FullName}