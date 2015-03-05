---
layout : post
category : work
tags : [linux, 备份]
title : 如何安装bacula
---

bacula是著名的备份软件，[官网在此](http://www.bacula.org/)

##服务器安装

```
sudo apt-get install gcc g++ sqlite libsqlite3-dev make
cd bacula-*
./configure -with-sqlite3
make
sudo make install
```

##客户端安装

```
cd bacula-*
./configure --prefix=/opt/bacula --enable-client-only
make
sudo make install
```

