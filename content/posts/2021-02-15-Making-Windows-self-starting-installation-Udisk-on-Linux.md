+++
title = "在Linux上制作Windows自启动安装U盘"
date = 2021-02-15T00:19:34+08:00
tags = ["Linux,Windows,自启动,安装,U盘"]
categories = ["work"]
draft = false
+++

# 在Linux上制作Windows自启动安装U盘

## 官网：https://github.com/WoeUSB/WoeUSB

## Features
- Support Legacy PC/UEFI booting
- Support FAT32 and NTFS filesystems
- Support using physical installation disc or disk image as source
## Supported Windows® installation images
- Windows Vista and later
- Any language or edition variants
- Windows PE
## Run
- 下载程序（https://github.com/WoeUSB/WoeUSB/releases）
- 添加运行权限
``` chmod +x path/to/woeusb-5.0.4.bash  ```
- 做启动U盘
``` sudo ./woeusb-5.0.4.bash --device /home/xxx/windows_10.iso /dev/sda  ```