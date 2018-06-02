---
layout : post
category : study
tags : [Nmap, 黑客, 工具, 端口扫描, 网络]
title : Nmap初体验
date : 2013-09-03
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIQ1g2bmk0aGh2S0U/edit?usp=sharing)

## What


### 网络扫描工具，通过隐秘手法推断获得运行的服务器、端口及服务信息


## where


### 攻:黑客常用扫描工具，用来找到攻击范围，而后精确爆破


### 防:管理员日常维护工具，找到目前的漏洞，第一时间修复它


## how


### install

- 具体参见[官网](http://nmap.org/download.html)
- Ubuntu安装办法
    - sudo apt-get install alien
    - 下载最新的Nmap、Ncat、Nping、Zenmap的RPM包
    - sudo alien nmap*.rpm ncat*.rpm nping*.rpm zenmap*.rpm
    - sudo dpkg -install nmap*.deb ncat*.deb nping*.deb zenmap*.deb

### 启动方式

- 命令行:nmap
- 图形界面:Zenmap

### 自带10种扫描方式

- Intense scan
(nmap -T4 -A -v) 一般来说，Intense scan可以满足一般扫描 -T4 加快执行速度 -A 操作系统及版本探测 -v 显示详细的输出
- Intense scan plus UDP
(nmap -sS -sU -T4 -A -v) 即UDP扫描 -sS TCP SYN 扫描 -sU UDP 扫描
- Intense scan,all TCP ports
(nmap -p 1-65536 -T4 -A -v) 扫描所有TCP端口，范围在1-65535，试图扫描所有端口的开放情况，速度比较慢。 -p 指定端口扫描范围
- Intense scan,no ping
(nmap -T4 -A -v -Pn) 非ping扫描 -Pn 非ping扫描
- Ping scan
(nmap -sn) Ping 扫描 优点：速度快。 缺点：容易被防火墙屏蔽，导致无扫描结果 -sn ping扫描
- Quick scan
(nmap -T4 -F) 快速的扫描 -F 快速模式。
- Quick scan plus
(nmap -sV -T4 -O -F --version-light) 快速扫描加强模式 -sV 探测端口及版本服务信息。 -O 开启OS检测 --version-light 设定侦测等级为2。
- Quick traceroute
(nmap -sn --traceroute) 路由跟踪 -sn Ping扫描，关闭端口扫描 -traceroute 显示本机到目标的路由跃点。
- Regular scan
规则扫描
- Slow comprehensive scan
(nmap -sS -sU -T4 -A -v -PE -PP -PS80,443,-PA3389,PU40125 -PY -g 53 --script all) 慢速全面扫描。