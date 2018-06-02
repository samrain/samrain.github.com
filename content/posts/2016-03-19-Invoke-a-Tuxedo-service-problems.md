---
layout : post
category : work
tags : [windows, Tuxedo]
title : 解决调用Tuxedo服务问题
date : 2016-03-19
---

## 解决调用Tuxedo服务问题

用C#开发了一个服务发布到IIS中，其中有调用Tuxedo服务时报错：

>System.ApplicationException: System.TypeInitializationException: The type initializer for 'Interface.Tuxedo.TuxedoHelper' threw an exception. ---> System.Security.SecurityException: The source was not found, but some or all event logs could not be searched. Inaccessible logs: Security.
>at System.Diagnostics.EventLog.FindSourceRegistration(String source, String machineName, Boolean readOnly, Boolean wantToCreate)
>at System.Diagnostics.EventLog.SourceExists(String source, String machineName, Boolean wantToCreate)
>at System.Diagnostics.EventLog.SourceExists(String source)
>at Interface.Tuxedo.LogWirter.LogInfoEvent(String message)
>at Interface.Tuxedo.TuxedoHelper.GetConfig()
>at Interface.Tuxedo.TuxedoHelper.GetTuxedoConfig()
>at Interface.Tuxedo.TuxedoHelper..cctor()
>--- End of inner exception stack trace ---

解决办法：

用 管理员账户安装Tuxedo服务 测试失败

在注册表编辑器中给eventlog添加用户`network service`读权限,测试失败

怀疑启动服务的用户不对,遂打开任务管理器,发现`w3wp`用户名千奇百怪.

进IIS管理器-应用程序池发现运行账号设置为`ApplicationPoolIdentify`,罪魁祸首就是他.这样就是使得启动用户名和程序池的名称一样.把所有程序池的运行用户都设置为同一个admin用户,问题解决.
