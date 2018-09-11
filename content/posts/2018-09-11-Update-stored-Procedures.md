+++
title = "更新SQLServer存储过程的脚本模版"
date = 2018-09-11T11:40:50+08:00
tags = ["SQLServer,存储过程,脚本"]
categories = ["work"]
draft = false
+++

        /****** Object: StoredProcedure [dbo].[存储过程名] Script Date: 2018-08-31 11:09 ******/
        if exists (select top(1) id from sysobjects where id = object_id(N'存储过程名') and        OBJECTPROPERTY(id, N'IsProcedure') = 1)
        DROP PROCEDURE [dbo].[存储过程名]
        GO


        SET ANSI_NULLS ON
        GO


        SET QUOTED_IDENTIFIER ON
        GO

        CREATE PROCEDURE [dbo].[存储过程名]