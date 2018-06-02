---
layout : post
category : study
tags : [ssh, 登录, 密码]
title : 为ssh连接指定别名并记住密码
date : 2015-02-19
---

## Why

维护多台linux服务器, 需要`ssh`进行操作，每次都要输入 `ssh user@x.x.x.x`并输入密码`OOXX#*&^%`, 是一件很浪费时间的事.

## What
可以给每台机器定义一个别名, 并且让系统帮你记住对应的用户名和密码, 只需要输入`ssh XXX`就能登录。

## How

### 1. 生成本地密钥

```
ssh-keygen -t rsa -C "xxx@mail.com"
```

之后一直回车到底。
生成后应该是这样的：

```
ls ~/.ssh
```
> id_rsa  id_rsa.pub  known_hosts

### 2. 定义服务器别名和配置登录账号

在目录`~/.ssh`创建文件config，并定义服务器名和配置登录账号

```
echo Host test >> config
echo HostName x.x.x.x  >> config
echo User username >> config
```

Host是别名, HostName 是主机名或IP, User是用户名。

如果有多个服务器，请换行后按照顺序增加下去。

### 3. 在服务器上注册

```
ssh-copy-id test
```

输入密码即可。

## 以后只要`ssh test`就能登录服务器了。
