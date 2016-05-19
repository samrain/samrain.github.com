---
layout : post
category : work
tags : [SQL Server, 数据库, 高可用, AlwaysOn]
title : SQL Server High Availability Solution
---

## SQLServer高可用性的几种方案

- Peer-to-Peer Replication 数据复制
- SQL Cluster Failover
- Log Shipping
- Mirroring
- AlwaysOn

## SQLServer不同版本AlwaysOn能拉动的服务器：

- SqlServer2012最多：4台 1主+1同步+2异步
- SqlServer2014最多：8台 1主+2同步（一般建议1台，减少性能损失）+5异步
  
