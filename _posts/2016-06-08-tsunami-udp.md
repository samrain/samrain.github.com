
---
layout : post
category : study
tags : [tsunami-udp, 导出, 备份]
title : 使用tsunami-udp备份
---

## 在需要备份的服务器上<a id="orgheadline18"></a>

### 安装tsunami-udp<a id="orgheadline16"></a>

-   下载

<http://pan.baidu.com/s/1mgHXmXU>

-   安装

    make && sudo make install

### 启动tsunami-udp:<a id="orgheadline17"></a>

    cd ~/Downloads/virtualbox-bk//141125 && tsunamid *

## 在备份服务器上<a id="orgheadline19"></a>

    tsunami
    connect 192.168.1.5
    get *
