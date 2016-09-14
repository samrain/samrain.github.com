---
layout : post
category : work
tags : [sqlserver,日志]
title : 清理sqlserver数据库日志
---

    -- %DNName_Log% 如果不知道在sys.database_files里是什么名字的话，可以用以下注释的语句进行查询
    
    -- USE %DNName%
    
    -- GO
    
    -- SELECT file_id, name FROM sys.database_files;
    
    
    USE [master]
    GO
    ALTER DATABASE %DNName% SET RECOVERY SIMPLE WITH NO_WAIT
    GO
    ALTER DATABASE %DNName% SET RECOVERY SIMPLE --简单模式
    GO
    USE ％DNName％
    GO
    DBCC SHRINKFILE (N'％DNName_Log%' , 11, TRUNCATEONLY)
    
    GO
    
    USE [master]
    GO
    ALTER DATABASE %DNName% SET RECOVERY FULL WITH NO_WAIT
    GO
    ALTER DATABASE %DNName% SET RECOVERY FULL --还原为完全模式
    GO
