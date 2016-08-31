
---
layout : post
category : study
tags : [rsync, 同步, cwRsyncServer]
title : 安装cwRsyncServer
---


## 下载cwRsyncServer4.1.0<a id="orgheadline11"></a>

<http://www.backupassist.com/rsync/cwRsyncServer_4.1.0_Installer.zip>

## 添加用户<a id="orgheadline12"></a>

用户名: bkmaster

密码: 438affed14a718add39f0c7729016828

## 安装cwRsyncServer<a id="orgheadline13"></a>

安装时指定用户名和密码为以上添加好的用户

运行services.msc,找到服务RsyncServer,状态应该是手动并且未启动.请设置为自动启动,并启动它.

命令行方式:

    sc start RsyncServer                              #启动服务
    sc config RsyncServer start= auto          #设置服务为自动启动

## 添加文件pwd到C:\Program Files\ICW\\下<a id="orgheadline14"></a>

内容为 `bkmaster:438affed14a718add39f0c7729016828` 

## 修改文件C:\Program Files\ICW\rsyncd.conf<a id="orgheadline15"></a>

例如:

    ### 协同办公服务器
    # VSS数据|一周一次
    
    use chroot = false
    strict modes = false
    # 只允许以下地址服务器来同步数据,请根据实际情况修改.
    hosts allow = 192.168.16.122
    log file = bk.log
    uid=0
    gid=0
    #用md5算rsyncd等于438affed14a718add39f0c7729016828,取前5位数字
    port = 43814 
    
    [vss]
    #备份地址
    path = /cygdrive/e/vss
    read only = yes
    list=no
    transfer logging = yes 
    #用户名
    auth users = bkmaster 
    #密码文件
    secrets file = pwd 
    
    [test]
    #备份地址
    path = /cygdrive/c/program files/icw/etc
    read only = yes 
    transfer logging = yes 
    #用户名
    auth users = bkmaster
    #密码文件
    secrets file = pwd
