---
layout : post
category : study
tags : [linux, ubuntu, lubuntu]
title : 快速安装我的Lubuntu V2.0版
---

## Install

完全弱智图形化安装界面，如果是新手请选择自动分配空间.


## 更换软件源地址


- 运行`software-properties-gtk`


- 点击选择框【下载自：】，选择“其他站点.....”


- 点击按钮【选择最佳服务器】，跳出窗口“测试下载服务器”。


- 等待窗口自动关闭后，系统会自动选中某个地址，然后点击按钮【选择服务器】。


- 这时系统会提示你输入管理员密码。


- 输入管理员密码后确认，回到最初界面。


- 点击按钮【关闭】

## 安装完Lubuntu后安装所有应用程序
<script src="https://gist.github.com/samrain/7807667.js"></script>

## 配置


- 配置搜狗拼音输入法

    主要是设置模糊音

- 配置Emacs

	复制文件到目录"~/.emacs.d"

- 配置profile-sync-daemon

	键入`psd p`可以看到当前状态

    修改文件"/etc/psd.conf"，在【USERS=""】输入用户名

    键入`sudo service psd start`

- 配置virtualbox

	导入之前的WinXP虚拟机

- 配置calibre

	导入之前的电子书

- 配置启动项

	编辑文件“~/.config/lxsession/Lubuntu/autostart”，添加需要启动时执行的命令。例如：~/start.sh
