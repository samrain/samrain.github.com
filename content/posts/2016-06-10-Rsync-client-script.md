
---
layout : post
category : study
tags : [rsync, 同步]
title : rsync客户端脚本For linux
date : 2016-06-10
---


    # 1.设置ssh自动登录
    
    # 2.测试，看服务器上有那些文件
    rsync -e "ssh" --list-only 3:/home/vsmaster/rsynctest/
    
    # 3.同步
    rsync -aczP --compress-level=9 --protocol=29 --delete -e "ssh" 3:/home/vsmaster/rsynctest/ ~/下载/test/
