+++
title = "解决bpool空间不够的问题"
date = 2022-10-27T09:28:32+08:00
tags = ["linux","ubuntu"]
categories = ["work"]
draft = false
+++

# 问题 

Requesting to save current system state ERROR couldn't save system state: Minimum free space to take a snapshot and preserve ZFS performance is 20%. Free space on pool "bpool" is 19%. Please remove some states manually to free up space.

# 检查命令
```
df -h /
zfs list -o space rpool bpool
zfs list -t snapshot
```

# 解决问题命令:
```
sudo zfs list -t snapshot | grep autozsys | awk '{print $1}' | xargs -n1 sudo zfs destroy
```