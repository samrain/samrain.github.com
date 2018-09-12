+++
title = "如何找到没有聚集索引的表"
date = 2018-09-12T19:47:17+08:00
tags = ["sqlserver,index,cluster"]
categories = ["work"]
draft = false
+++

sql如下：

    SELECT TOP 1000 o.name, i.type_desc, o.type_desc, o.create_date
    FROM sys.indexes i
    INNER JOIN sys.objects o
    ON i.object_id = o.object_id
    WHERE o.type_desc = 'USER_TABLE'
    AND i.type_desc = 'HEAP'
    ORDER BY o.name
    GO

参考：

https://www.mssqltips.com/sqlservertip/2510/sql-server-tables-without-a-clustered-index/

https://www.brentozar.com/blitz/heaps-tables-without-primary-key-clustered-index/