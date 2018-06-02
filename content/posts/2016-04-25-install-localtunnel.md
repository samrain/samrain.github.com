---
layout : post
category : study
tags : [测试, http]
title : 安装localtunnel(穿透内网工具)
date : 2016-04-25
---

1.  install

    sudo apt-get install npm
    sudo npm install -g localtunnel

2.  run

    lt

如果报错[/usr/bin/env: node: No such file or directory],那么运行

    sudo ln -s /usr/bin/nodejs /usr/bin/node
