---
layout : post
category : work
tags : [windows, 性能]
title : 如何提高windows程序的性能
---

# 调整windows服务器

## 调整TcpTimedWaitDelay

描述：确定 TCP/IP 可释放已关闭连接并重用其资源前，必须经过的时间。关闭和释放之间的此时间间隔通称 TIME_WAIT 状态或两倍最大段生命周期（2MSL）状态。此时间期间，重新打开到客户机和服务器的连接的成本少于建立新连接。减少此条目的值允许 TCP/IP 更快地释放已关闭的连接，为新连接提供更多资源。如果运行的应用程序需要快速释放和创建新连接，而且由于 TIME_WAIT 中存在很多连接，导致低吞吐量，则调整此参数。 如何查看或设置： 使用 regedit 命令访问 HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/ Services/TCPIP/Parameters 注册表子键并创建名为 TcpTimedWaitDelay 的新 REG_DWORD 值。 将此值设置为十进制 30，其为十六进制 0x0000001e。该值将等待时间设置为 30 秒。 停止并重新启动系统。 缺省值：0xF0，它将等待时间设置为 240 秒（4 分钟）。 建议值：最小值为 0x1E，它将等待时间设置为 30 秒。

打开注册表编辑器，如 Regedit.exe 或 Regedt32.exe。

导航到：HKLM\System\CurrentControlSet\Services\Tcpip\Parameters

找到 TcpTimedWaitDelay（如果没有就新建一个DWORD），然后将“数值数据” 字段设置为 60（十进制）。

关闭注册表编辑器，然后重新启动计算机。

## 调整MaxUserPort

描述：确定在应用程序从系统请求可用用户端口时，TCP/IP 可指定的最高端口号。 如何查看或设置： 使用 regedit 命令访问 HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/ Services/TCPIP/Parameters 注册表子键并创建名为 MaxUserPort 的新 REG_DWORD 值。 停止并重新启动系统。 缺省值：无 建议值：至少十进制 32768。

打开注册表编辑器，如 Regedit.exe 或 Regedt32.exe。

导航到：HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters

找到 MaxUserPort （如果没有就新建一个DWORD），將 [数值数据] 字段设置为 60000(十进制)。

关闭注册表编辑器，然后重新启动计算机。

# 调整windows service
## 配置windows service的App.config

	<!-- GcCpuGroup enables Garbage Collection for multiple CPU groups-->
	<!-- Thread_UseAllCpuGroups enables manage thread distribution across all CPU groups for the runtime.-->
	<configuration>
	<runtime>
	<Thread_UseAllCpuGroups enabled="true"/>
	<GCCpuGroup enabled="true"/>
	<gcServer enabled="true"/>
	</runtime>
	</configuration>

	<!-- 增加HTTP请求并发数量-->
	<system.net>
	<connectionManagement>
	<add address="*" maxconnection="65535"/>
	</connectionManagement>
	</system.net>
	
	<!-- 增加处理线程数量-->
	<system.web>
	<httpRuntime minFreeThreads="10240" minLocalRequestFreeThreads="20480"/>
	<processModel autoConfig="false" maxWorkerThreads="40960" maxIoThreads="40960"/>
	</system.web>
	
	<!-- 增加WCF并行处理能力-->
	<!-- MaxConcurrentSessions: default is 100 * ProcessorCount-->
	<!-- MaxConcurrentCalls: default is 16 * ProcessorCount-->
	<!-- MaxConcurrentInstances: default is the total of the above two, which follows the same pattern as before.-->
	<serviceThrottling maxConcurrentCalls="4096" maxConcurrentInstances="29696" maxConcurrentSessions="25600 "/> 

	<!-- 增加basicHttpBinding的buffer size-->
	<basicHttpBinding>
	<binding name="basicHttpBinding" maxReceivedMessageSize="2147483647" maxBufferPoolSize="2147483647" maxBufferSize="2147483647">
	<readerQuotas maxStringContentLength="8192000"/>
	<security mode="None"/>
	</binding>
	</basicHttpBinding>
	

 

