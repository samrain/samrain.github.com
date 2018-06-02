
---
layout : post
category : work
tags : [SqlServer, 索引, 碎片]
title : 整理SqlServer表上索引碎片
date : 2016-07-25
---

## 查询当前数据库的表上索引碎片情况，按照严重程度顺序排列<a id="orgheadline28"></a>

    USE DBNAME;
    SELECT 
    DB_NAME() AS DatbaseName 
    , SCHEMA_NAME(o.Schema_ID) AS SchemaName 
    , OBJECT_NAME(s.[object_id]) AS TableName 
    , i.name AS IndexName 
    , ROUND(s.avg_fragmentation_in_percent,2) AS [Fragmentation %] INTO #TempFragmentation
    FROM sys.dm_db_index_physical_stats(db_id(), NULL, NULL, NULL, NULL) s
    INNER JOIN sys.indexes i ON s.[object_id] = i.[object_id] AND s.index_id = i.index_id
    INNER JOIN sys.objects o ON i.object_id = O.object_id;
    
    SELECT * FROM #TempFragmentation ORDER BY [Fragmentation %] DESC;
    
    DROP TABLE #TempFragmentation;

## 查询当前数据库的表上从来没有使用过的索引<a id="orgheadline29"></a>

    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 
    SELECT 
    DB_NAME() AS DatbaseName 
    , SCHEMA_NAME(O.Schema_ID) AS SchemaName 
    , OBJECT_NAME(I.object_id) AS TableName 
    , I.name AS IndexName 
    INTO #TempNeverUsedIndexes 
    FROM sys.indexes I INNER JOIN sys.objects O ON I.object_id = O.object_id
    
    
    SELECT * FROM #TempNeverUsedIndexes 
    ORDER BY DatbaseName, SchemaName, TableName, IndexName
    
    
    DROP TABLE #TempNeverUsedIndexes

## 查询当前数据库的表上使用的比较少的索引<a id="orgheadline30"></a>

    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
    SELECT 
    DB_NAME() AS DatabaseName 
    , SCHEMA_NAME(o.Schema_ID) AS SchemaName 
    , OBJECT_NAME(s.[object_id]) AS TableName 
    , i.name AS IndexName 
    , s.user_updates 
    , s.system_seeks + s.system_scans + s.system_lookups AS [System USAGE] INTO #TempUnusedIndexes
    FROM sys.dm_db_index_usage_stats s
    INNER JOIN sys.indexes i ON s.[object_id] = i.[object_id] AND s.index_id = i.index_id
    INNER JOIN sys.objects o ON i.object_id = O.object_id ;
    SELECT TOP 20 *
    FROM #TempUnusedIndexes ORDER BY [user_updates] DESC ;
    DROP TABLE #TempUnusedIndexes

## 重建索引，对于碎片比较厉害的索引，效果比重组要好<a id="orgheadline31"></a>

    ALTER INDEX [INDEX_NAME] ON Table_Name REBUILD PARTITION = ALL WITH ( PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, ONLINE = OFF, SORT_IN_TEMPDB = OFF )

