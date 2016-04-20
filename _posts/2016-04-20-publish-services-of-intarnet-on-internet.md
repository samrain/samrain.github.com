---
layout : post
category : work
tags : [shadowsocks, ngrok, privoxy, 发布, 代理, proxy]
title : 如何把内网的服务公布到公网上
---

## ngrok<a id="sec-4-1" name="sec-4-1"></a>

这个是一个用来把内网服务公布到公网的开源程序，但是很不幸的是被炝了。以下是如何配置使用。

### 下载<a id="sec-4-1-1" name="sec-4-1-1"></a>

<https://ngrok.com/download>

### 配置<a id="sec-4-1-2" name="sec-4-1-2"></a>

编辑配置文件 ngrok.config

    auth_token: dxW21sgRz-DscM932vgkDxe
    http_proxy: "http://192.168.16.41:60002"
    
    tunnels:
    calibre-server:
    subdomain: samebook
    proto:
    https: 8080

其中http_proxy指向下面配置的网关。

## shadowsocks<a id="sec-4-2" name="sec-4-2"></a>

科学上网工具，不解释了。

### 下载<a id="sec-4-2-1" name="sec-4-2-1"></a>

<http://shadowsocks.org/en/download/clients.html>

### 配置<a id="sec-4-2-2" name="sec-4-2-2"></a>

编辑配置文件config.json

    {
    "server":"aaa.bbb.ccc.ddd",
    "server_port":8388,
    "local_port":60001,
    "password":"CCCCCCCCC",
    "timeout":600,
    "method":"aes-256-cfb"
    }

### 运行<a id="sec-4-2-3" name="sec-4-2-3"></a>

    ~/ngrok/shadowsocks-local-linux64-1.1.3 -c=~/ngrok/config.json &

## privoxy<a id="sec-4-3" name="sec-4-3"></a>

转换各种服务为http代理

### 安装<a id="sec-4-3-1" name="sec-4-3-1"></a>

    sudo apt-get install Privoxy

### 配置<a id="sec-4-3-2" name="sec-4-3-2"></a>

编辑配置文件/etc/privoxy/config

    listen-address  192.168.16.41:60002
    forward-socks5   /               127.0.0.1:60001 .

### 运行<a id="sec-4-3-3" name="sec-4-3-3"></a>

    sudo service privoxy restart
