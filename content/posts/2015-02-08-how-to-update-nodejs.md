---
layout : post
category : work
tags : [node.js, 更新]
title : 如何更新nodejs
date : 2015-02-08
---

## What

升级nodejs到0.12。

## Why

今天收到通知nodejs稳定版stable终于升到了0.12，对于我这个不升不舒服斯基来说，又要up咯。

## How

- 安装cnpm
珍惜生命远离npm，哈哈，主要是出国网络不给力，幸好淘宝做了一个镜像([地址在此](http://npm.taobao.org/))。让我们先装上再说：

```
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
```

**注意：由于我是ubuntu，所以都在命令前加上`sudo`。**

- 安装模块`n`

```
sudo cnpm install -g n 
```

- 更新nodejs

```
sudo n stable
node -v
```

- 最后别忘记了update整个npm

```
sudo cnpm update
```
