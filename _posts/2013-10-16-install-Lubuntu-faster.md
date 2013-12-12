---
layout : post
category : study
tags : [linux, ubuntu, lubuntu]
title : 快速安装我的Lubuntu
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeITG03OXphM2R1eXc/edit?usp=sharing)

## Install


完全弱智图形化安装界面，暂且不表


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


- 配置输入法

	- 首先重启PC
	- `ibus-setup`
      - 【常规】选项
          - 选择【候选词排列方向】为“水平”
		  - 选择【显示语言栏】为“活动时”
		  - 选中【在应用程序窗口中启用内嵌编辑模式】
		  - 选中【使用自定义字体】，并设置字体为“文泉驿微米黑”，大小为“14”
	  - 【高级】选项
		  - 选中【在所有应用程序中共享同一个输入法】
	- `/usr/lib/ibus-sunpinyin/ibus-setup-sunpinyin`
      - 【Pinyin Mode】选项
		- 选择【Fuzzy Pinyin】，点击按钮【Fuzzy Pinyin Setup】，选中分辨不清的拼音
		- 选择【Smart Segmentation】
		- 选择【Inner Fuzzy】
	  - 【Keyboard】选项
		- 【Page Flip】选择“-/=”
	  - 【General】选项
		- 【Candiate Num】选择“3”
		- 【Memory Strength】选择“3”

- 配置freemind
	- 复制文件到目录"~/.freemind"
		- "patterns.xml"()
		- “auto.properties"()

- 配置Emacs

	复制文件到目录"~/.emacs.d"

- 配置profile-sync-daemon

	修改文件"/etc/psd.conf"，在【USERS=""】输入用户名

- 配置remmina

	复制所有的remmina文件到目录"~/.remmina"

- 配置virtualbox

	导入之前的WinXP虚拟机

- 配置calibre

	导入之前的电子书
