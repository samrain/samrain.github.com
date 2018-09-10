+++
title = "清除SqlServer AlwaysOn日志"
date = 2018-06-30T14:30:17+08:00
tags = ["sqlserver"]
categories = ["work"]
draft = false
+++

`--dbName为数据库名`

    use dbName

    BACKUP LOG dbName To DISK = N'nul'

    go

    dbcc shrinkfile(dbName_log,0, TRUNCATEONLY)

    go

    dbcc shrinkdatabase(dbName,0, TRUNCATEONLY)

    go