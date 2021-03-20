+++
title = "扩大swap大小"
date = 2021-03-20T23:45:59+08:00
tags = ["linux,swap"]
categories = ["study"]
draft = false
+++
# 扩大swap大小

代码如下：
```
swapon -s
free -m
sudo swapoff /swapfile
swapon -s
free -m
fallocate -l 8G /swap
sudo fallocate -l 8G /swap
du -sh /swap
chown root:root /swap
sudo chown root:root /swap
sudo chmod 600 /swap
mkswap -L swap /swap
sudo mkswap -L swap /swap
swapon /swap
sudo swapon /swap
free -h
sudo micro /etc/fstab
free -m
```