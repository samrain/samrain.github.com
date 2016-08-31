
---
layout : post
category : study
tags : [rsync, 同步, cwRsync]
title : rsync客户端脚本For windows上cwRsync服务的
---


    #新建一个文件pwd,保存密码,这里放在当前目录下,内容为438affed14a718add39f0c7729016828
    echo 438affed14a718add39f0c7729016828 > pwd && chmod 600 pwd
    
    # 测试,看服务器上有那些文件
    rsync --list-only --port=43814 bkmaster@192.168.1.80::test --password-file=pwd
    
    # 备份文件
    # a表示archive模式,等于-rlptgoD
    # z表示压缩后再传,--compress-level=9表示用第9级压缩,目前是最高级
    # B表示校验时按照固定大小的块来比较，--block-size表示块大小，一般取512,1024,2048
    # P表示断点续传
    # c表示强制进行校验
    # --protocol表示采用的tcp协议字段号，这里取29
    # --progress 输出每个文件的同步时数据
    # --delay-updates表示最后一起更新
    # --delete 如果服务端有文件删除那么客户端同步删除
    # --port 用那个端口
    # --password-file用那个密码文件,里面只有一行数据,就是密码
    # bkmaster代表用户名
    # ::test表示调用配置文件中那段的备份信息
    rsync -azcP --compress-level=9 --protocol=29 --delete --port=43814 --password-file=pwd bkmaster@192.168.1.80::test ~/下载/test/etc
