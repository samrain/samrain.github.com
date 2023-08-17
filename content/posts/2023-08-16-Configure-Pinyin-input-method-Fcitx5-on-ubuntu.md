+++
title = "配置ubuntu上拼音输入法Fcitx5"
date = 2023-08-16T22:02:55+08:00
tags = ["linux","输入法","拼音","Fcitx"]
categories = ["work"]
draft = false
+++


因为搜狗输入法只能支持到Ubuntu2004版，百度输入法也同样不可用。为了能方便输入，所以在Ubuntu2204上安装Fcitx5。

1. 把fcitx4删除干净 ``` sudo apt remove fcitx* ```
1. 安装fcitx5 ```sudo apt install fcitx5 ```
1. 下载肥猫wiki词库文件zhwiki.dict，下载地址： https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases
1. 词典文件复制到``` ~/.local/share/_fcitx5_/pinyin/dictionaries ```。
1. 重启fcitx5