---
layout : post
category : tech
tags : [Gentoo, Virtualbox, 虚拟机]
title : Install Gentoo In Virtualbox
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIT2t2cDlpMWI3anM/edit)

## 1[下载mini安装包](http://mirrors.163.com/Gentoo/Releases/Amd64/Autobuilds/Current-install-amd64-minimal/install-amd64-minimal-20121013.iso)


## 2在Virtualbox上建立Gentoo64bit系统


### 网络

- 网卡1
 - 混杂模式
全部允许

### 存储

- IDE控制器
 - 添加新盘
下载好的安装包

## 3启动虚拟机


### 按F1

- 输入`gentoo`

## 4设置网络


### `mkdir /run`


### `dhcpcd eth0`


## 5验证网络


### `ping www.google.com`


## 6启动SSH


### `/etc/init.d/sshd start`


## 7修改root密码


### `passwd`


## 8分区


### `fdisk`


## 9安装Stage3


### 1下载文件

- `links http://www.gentoo.org/main/en/mirrors.xml`
找到asia netease
进入目录【releases/amd64/autobuilds】
找到文件stage3-amd64-20121013.tar.bz2
按D键

### 2安装文件

- `cd /mnt/gentoo`
- `tar xvjpf stage3-*.tar.bz2`

## 10配置编译选项


### 打开/etc/make.conf

- `nano -w /mnt/gentoo/etc/make.conf`
- CFLAGS=&quot;-march=k8 -O2 -pipe&quot;   # EM64T应该使用-march=nocona # 两个变量使用相同的设置 CXXFLAGS=&quot;${CFLAGS}&quot;  # j后面的数字是CPU的数目加一 MAKEOPTS=&quot;-j2&quot;

## 11Chroot


### 选择境像站点

- 使用mirrorselect更新GENTOO_MIRRORS变量
`mirrorselect -i -o &gt;&gt; /mnt/gentoo/etc/make.conf`
- 使用mirrorselect选择rsync镜像站点
`mirrorselect -i -r -o &gt;&gt; /mnt/gentoo/etc/make.conf`
- 再检查一下/mnt/gentoo/etc/make.conf里的设置

### 拷贝DNS信息

- `cp -L /etc/resolv.conf /mnt/gentoo/etc/`

### 挂载/proc和/dev文件系统

- `mount -t proc none /mnt/gentoo/proc mount -o bind /dev /mnt/gentoo/dev`

### 进入新的系统环境

- chroot到新环境里
`chroot /mnt/gentoo /bin/bash env-update source /etc/profile export PS1=&quot;(chroot) $PS1&quot;`

## 12配置Portage


### 更新Portage树

- `emerge --sync --quiet`

### 选择正确的Profile

- 验证系统profile
`eselect profile list`
- 切换profile
`eselect profile set 2`
- 切换到non-multilib profile