---
layout : post
category : work
tags : [AppFabric]
title : 解决AppFabric问题 ErrorCode<ERRCA0017>:SubStatus<ES0005>
date : 2016-04-13
---

# 解决AppFabric问题 ErrorCode<ERRCA0017>:SubStatus<ES0005>:发生临时故障。请稍后重试。 (存储存在争用情况。)<a id="sec-3" name="sec-3"></a>

1.升级AppFabric到1.1

下载链接：<https://www.microsoft.com/zh-cn/download/details.aspx?id=27115>

2.更新AppFabric1.1补丁（目前共7个）

下载链接：<https://support.microsoft.com/en-us/kb/3092423>

3.升级客户端dll版本>1.0.4009.0

    Microsoft.ApplicationServer.Caching.Core.dll
    Microsoft.ApplicationServer.Caching.Client.dll

4.修改客户端程序调试获取innerException，进而解决问题

详见：<http://blogs.msdn.com/b/akshar/archive/2011/05/01/azure-appfabric-caching-errorcode-lt-errca0017-gt-substatus-lt-es0006-gt-what-to-do.aspx>

5.其他参考链接

<http://social.msdn.microsoft.com/Forums/en-US/velocity/thread/5e9b8db2-8b9f-4d0e-96c6-ad698b24e36e>
