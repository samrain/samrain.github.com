---
layout : post
category : study
tags : [PowerShell, 远程连接]
title : PowerShell如何远程连接
---

1. 在服务器上用管理员权限打开PowerShell终端

2. 在PowerShell终端上执行`Enable-PSRemoting`，之后的确认操作，全部选是

3. 在客户端上用管理员权限打开PowerShell终端

4. 在PowerShell终端上执行以下命令，将某个IP段的的主机都加入信任列表。此处用192.168.3.*为例：

`Set-Item wsman:\localhost\Client\TrustedHosts -value 192.168.3.*`

5. 在PowerShell终端上执行以下命令，登录服务器。此处用192.168.3.1为例：

`Enter-PSSession 192.168.3.1 -Credential %domain%\%username%`
