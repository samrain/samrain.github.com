---
layout : post
category : study
tags : [Rhythmbox, 中文乱码, 中文革命乱码, 乱码]
title : 解决Rhythmbox中文歌名字乱码问题
---

当你用Rhythmbox播放MP3的时候,会发现他下面的中文歌曲名字会显示成乱码,原因是中文歌曲的文件名使用的编码标准与系统默认的不一
样。要解决他的办法也是比较的简单。

首先安装包:`sudo apt-get install python-mutagen`

然后 cd 到你的音乐文件夹下

用下面命令:`mid3iconv -e GBK *.mp3`

重新启动一次 Rhythmbox 就 OK 了。

如果想转换当前目录下(包括子目录下)的所有 MP3,使用命令:`find . -iname "*.mp3" -execdir mid3iconv -e gbk {} \;`

现在大陆绝大多数能找到的MP3标签是以GBK/GB18030/gb2312 编码,使用`-e gbk`来处理就够了,当然你也可以使用`-e gb18030(-e gb2312)`来处理。
