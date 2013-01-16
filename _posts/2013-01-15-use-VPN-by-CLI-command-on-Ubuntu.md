---
layout : post
category : tech
tags : [VPN, Ubuntu, CLI]
title : 在Ubuntu上使用命令行CLI方式使用VPN
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIbWRnWDNwT0NtcG8/edit)

## 安装客户端


### sudo apt-get install pptpd network-manager-pptp network-manager-vpnc network-manager-gnome


## 设置客户端


### sudo pptpsetup --create vpnname --server ip --username test --password test --encrypt --start


## 拨号


### sudo pon vpnname


## 使用


### sudo addroute


## 挂断


### sudo poff vpnname
