+++
title = "如果用脚本迁移SQLServer数据库"
date = 2018-09-11T11:33:28+08:00
tags = ["SQLServer,数据库,脚本"]
categories = ["work"]
draft = false
+++

+ 迁移非系统数据库

        use master
        go
        sp_detach_db '非系统数据库'
        go
        
        
        use master
        go
        sp_attach_db '非系统数据库','C:\Sqldata\非系统数据库.mdf','C:\Sqldata\非系统数据库.ldf'
        go

        重启Sqlserver

+ 迁移系统数据库

        use tempdb
        go
        sp_helpfile
        go


        use master
        go
        Alter database tempdb modify file (name = tempdev, filename = 'C:\Sqldata\tempdb.mdf')
        go
        Alter database tempdb modify file (name = templog, filename = 'C:\Sqldata\templog.ldf')
        go


        重启Sqlserver