
---
layout : post
category : study
tags : [Linux, ��̬IP]
title : Linuxϵͳ�����þ�̬IP
---

## �༭ `etc/network/interfaces`<a id="orgheadline25"></a>

### ��dhcp һ������<a id="orgheadline23"></a>

    # The primary network interface
    
    auto eth0
    
    #iface eth0 inet dhcp

### ��Ӻ;�̬ip�йصĲ���<a id="orgheadline24"></a>

    # The primary network interface
    
    iface eth0 inet static
    
    address 192.168.0.10
    
    netmask 255.255.255.0
    
    gateway 192.168.0.1

## �༭ `/etc/resolv.conf` ������dns<a id="orgheadline26"></a>

    nameserver 202.96.134.133
    
    nameserver 202.106.0.20

ubuntu��������ᱻ���ˣ��Զ��ָ�Ĭ��ֵ��������Ҫ���������޸� `/etc/ppp/peers/dsl-provider` ע�͵�userpeerdns��һ�м���

## ִ�����������������������<a id="orgheadline27"></a>

    $sudo ifdown eth0
    
    $sudo ifup eth0
