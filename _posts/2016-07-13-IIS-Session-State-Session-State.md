
---
layout : post
category : work
tags : [C#, IIS]
title : 会话状态Session State
---

1.  InProc

InProc选项支持在进程内保存会话状态，实际上是在w3wp.exe工作进程中保存会话状态。这意味着保存会话状态数据将分别保存在每台服务器中，因此其他服务器无法访问当前服务器会话状态数据。这还意味着一个应用程序池回收操作将导致会话状态的丢失。在不考虑Off选项的情况下，这种解决方案运行速度最快，但是，除非我们应用粘性会话机制，否则这种解决方案无法在Web farm环境中正常工作。如果使用了粘性会话机制、同时没有使用Web garden的话，那么InProc是一个可行的解决方案。

1.  StateServer

StateServer是微软公司提供的另一种解决方案，但是这种解决方式没有提供故障转移的功能。当在服务器中成功地安装了ASP.NET之后，Windows Services将增加一项名为 `ASP.NET State Service` 的服务，默认情况下，这个服务处于禁用状态，但是可以随时启用这项服务。我们需要将该服务的启动模式设置为Automatic，这样每次系统重启时，这项服务都会自动启动。

默认情况下，ASP.NET SessionState服务是无法远程访问的，如果需要远程运行ASP.NET SessionState服务，那么需要在注册表中将 `HKEY_LOCAL_MACHINE\SYSTEM\ CurrentControlSet\Services\aspnet_state\Parameters\AllowRemoteConnection` 的值设为1。

如果不打算在本地服务器中使用默认的状态服务器，那么可以根据需要设置参数。 `<sessionState mode="StateServer" stateConnectionString="tcpip=10.0.0.10:42424" />`

1.  SQLServer

微软提供的第三个解决方案是SQLServer会话状态。如果当前应用程序运行环境中使用了一个SQLServer群集，那么这种解决方案是一种非常合适的解决方案。与其他方案相比，SQLServer会话状态的性能开销最高，但是因为SQLServer会话状态提供了冗余支持，所以这种方案对性能的影响也是微不足道的。在部署这种解决方案之前，请务必确保系统性能能够满足当前应用程序的要求，同时，还要保证系统具有良好的可伸缩性。

SQL Server会话状态的配置较为复杂，需要使用aspnet<sub>regsql.exe工具</sub>

1.  Custom

ASP.NET支持实现自定义的会话状态提供程序。所以，可以实现一种不同于微软解决方案的方案。与其他选项类似，一旦成功地开发了自定义的解决方案并将其安装部署到服务器中之后，那么，我们必须对网站的web.config文件以及应用程序根目录下的web.config文件进行更新，使之指向自定义的提供程序。

1.  Off

可以完全关闭会话状态，在某些情况下这样做是有意义的，因为启用会话状态后，即使我们没有使用会话状态，系统性能也会有所下降。为了关闭会话状态，我们可以按照"InProc"一节的内容进行操作，唯一不同之处是选择Off而不是选择In Process。在IIS Manager中，这种做法被称为Not enabled。
