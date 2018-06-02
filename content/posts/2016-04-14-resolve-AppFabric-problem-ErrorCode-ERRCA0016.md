---
layout : post
category : work
tags : [AppFabric]
title : 尝试解决AppFabric问题  ErrorCode<ERRCA0016> SubStatus<ES0001>
date : 2016-04-14
---

# 尝试解决AppFabric问题： ErrorCode<ERRCA0016>:SubStatus<ES0001>:连接终止，可能是由于服务器或网络问题，或序列化对象大小大于服务器上的 MaxBufferSize。该请求的结果未知。<a id="sec-4" name="sec-4"></a>

1.  在客户端和服务端配置文件中加上

    <transportProperties receiveTimeout=”900000” />

1.  去掉客户端配置文件中

    maxConnectionsToServer = 5
