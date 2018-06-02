
---
layout : post
category : study
tags : [Linux, 静态IP]
title : Linux系统下设置静态IP
date : 2016-07-21
---

## 编辑 `etc/network/interfaces`<a id="orgheadline25"></a>

### 将dhcp 一行屏蔽<a id="orgheadline23"></a>

    # The primary network interface
    
    auto eth0
    
    #iface eth0 inet dhcp

### 添加和静态ip有关的参数<a id="orgheadline24"></a>

    # The primary network interface
    
    iface eth0 inet static
    
    address 192.168.0.10
    
    netmask 255.255.255.0
    
    gateway 192.168.0.1

## 编辑 `/etc/resolv.conf` ，设置dns<a id="orgheadline26"></a>

    nameserver 202.96.134.133
    
    nameserver 202.106.0.20

ubuntu下重启后会被回退，自动恢复默认值。我们需要这样做：修改 `/etc/ppp/peers/dsl-provider` 注释掉userpeerdns这一行即可

## 执行下面两个命令，启用新设置<a id="orgheadline27"></a>

    $sudo ifdown eth0
    
    $sudo ifup eth0
