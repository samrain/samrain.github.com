+++
title = "怎样在UOS上操作WPS时能显示雅黑字体"
date = 2021-07-02T12:15:57+08:00
tags = ["UOS,WPS,字体,linux"]
categories = ["work"]
draft = false
+++
# 怎样在UOS上操作WPS时能显示雅黑字体

1. 在Windows的fonts目录找到雅黑字体文件，然后复制到UOS上；
1. 在UOS启动命令行切换root身份，然后复制文件到/usr/share/fonts/wps-office-fonts目录下面  
1. 在UOS上进入WPS字体目录，运行 ```chomd  777 -R *```  
1. 清除字体缓存，运行``` fc-cache -fv ``` 
1. 重启预加载，``` quickstartoffice restart ```