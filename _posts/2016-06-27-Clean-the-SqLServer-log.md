---
layout : post
category : work
tags : [sqlserver,��־]
title : ����sqlserver���ݿ���־
---

    -- %DNName_Log% �����֪����sys.database_files����ʲô���ֵĻ�������������ע�͵������в�ѯ
    
    -- USE %DNName%
    
    -- GO
    
    -- SELECT file_id, name FROM sys.database_files;
    
    
    USE [master]
    GO
    ALTER DATABASE %DNName% SET RECOVERY SIMPLE WITH NO_WAIT
    GO
    ALTER DATABASE %DNName% SET RECOVERY SIMPLE --��ģʽ
    GO
    USE ��DNName��
    GO
    DBCC SHRINKFILE (N'��DNName_Log%' , 11, TRUNCATEONLY)
    
    GO
    
    USE [master]
    GO
    ALTER DATABASE %DNName% SET RECOVERY FULL WITH NO_WAIT
    GO
    ALTER DATABASE %DNName% SET RECOVERY FULL --��ԭΪ��ȫģʽ
    GO
