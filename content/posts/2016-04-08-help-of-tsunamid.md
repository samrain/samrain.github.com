---
layout : post
category : study
tags : [tsunamid]
title : tsunamid帮助
date : 2016-04-08
---

# tsunamid帮助<a id="sec-6" name="sec-6"></a>

## Settings in the Tsunami Client<a id="sec-6-1" name="sec-6-1"></a>

    $ tsunami
    Tsunami Client for protocol rev 20061025
    Revision: v1.1 devel cvsbuild 31
    Compiled: Dec 15 2006 14:57:59
    
    tsunami> set
    server = localhost -- to which currently connected
    port = 46224 -- TCP control port on server
    udpport = 46224 -- UDP receiving port on client to use
    buffer = 20000000 -- size of the ring buffer in RAM in bytes
    blocksize = 32768 -- how large UDP blocks to use
    verbose = yes -- give a bit more output
    transcript = no -- 'yes' to write all screen output to a transcript file,
    file naming is automatic in "2006-12-15-13-21-41.tsuc" style
    ip = v4 -- use ip version 'v4' or 'v6'
    output = line -- output statistics mode is 'line' for scrolling
    statistics, or 'screen' for a single updating page
    rate = 650000000 -- the target transfer rate (you may use 'm','M','g','G' so
    for example '128M' or '1G')
    error = 7.50% -- maximum error rate to maintain by rate throttling
    slowdown = 25/24 -- how fast to start throttling the rate
    speedup = 5/6 -- how fast to recover and move up towards target rate again
    history = 25% -- weighting of past error rates in the throttling algorithm
    lossless = yes -- change to 'no' to allow data loss e.g. rate priority transfers
    losswindow = 1000 msec -- used if lossless='no', sets how old missing data should still be 
    requested again. If too old, data is considered lost.
    blockdump = no -- 'yes' to write a block bitmap dump to a file, shows
    packets that were not received as bit value 0,
    file format is 4 bytes (long) contains number of blocks (bits),
    followed by number of block count of bits, and two extra bytes
    that may be ignored
    passphrase = default -- specify a different non-default passphrase for login to the server

## Settings in the Tsunami Server<a id="sec-6-2" name="sec-6-2"></a>

    $ tsunamid --help
    Usage: tsunamid [--verbose] [--transcript] [--v6] [--port=n] [--datagram=bytes] [--buffer=bytes]
    [--hbtimeout=seconds] [filename1 filename2 ...]
    
    verbose or v : turns on verbose output mode 打开详细输出模式
    transcript : turns on transcript mode for statistics recording 打开统计模式
    v6 : operates using IPv6 instead of (not in addition to!) IPv4 使用IPV6协议
    port : specifies which TCP port on which to listen to incoming connections 指定哪个端口监听
    secret : specifies the shared secret for the client and server 指定客户端和服务端的共享秘钥
    client : specifies an alternate client IP or host where to send data 指定允许发送数据的客户端IP地址或host名称
    datagram : specifies the desired datagram size (in bytes) 
    buffer : specifies the desired size for UDP socket send buffer (in bytes) 指定UDP套接字发送缓冲区所需的大小（以字节为单位）
    hbtimeout : specifies the timeout in seconds for disconnect after client heartbeat lost 指定探查不到客户端心跳的超时时间
    finishhook : run command on transfer completion, file name is appended automatically 在传输结束时执行命令,文件名会自动追加到命令上.
    allhook : run command on 'get *' to produce a custom file list for client downloads 在"get *"时执行命令产生一个自定义文件清单供客户端下载用
    filenames : list of files to share for downloaded via a client 'GET *' 客户端执行"GET *"时列出能够被下载的文件清单
    
    
    Defaults: verbose = 1
    transcript = 0
    v6 = 0
    port = 46224
    buffer = 20000000 bytes
    hbtimeout = 15 seconds
