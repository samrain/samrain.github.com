---
layout : post
category : study
tags : [Linux, 权限]
title : Linux的目录和文件权限
---


文件和目录的权限表示，是用rwx这三个字符来代表所有者、用户组和其他用户的权限。

r： 读     4

w：写     2

x： 执行 1

-：  无     0

rwx合起来就是4+2+1=7

    # 要改变文件权限，可使用下面命令：
    chmod 777 x.file
    
    # 看目录情况：
    ls -l
    
    # 要改变文件所属组，可使用下面命令
    chown :users conkyrc.sample
    
    # 要改变文件所属用户，可使用下面命令
    chown user conkyrc.sample

要修改目录，使用 -R参数就可以了，方法和前面一样。
