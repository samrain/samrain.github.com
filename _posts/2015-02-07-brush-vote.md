---
layout : post
category : work
tags : [parallel, curl]
title : 刷票
---
## Why

帮朋友完成任务，让名次不要太低

## what

刷票

## How
网站只做了当天同名或者同电话的人不能投2次票的验证，另外同一个IP一天最多投100票，其他都没有做验证。O(∩_∩)O哈哈~。

用chrome的F12工具中`Network`抓取了post日志，注意`Preserve log`必须打勾，仔细看日志发现了其实是向`http://www.example.com/toupiao/Save`发送Post请求，数据为

``` 
name=张三&phone=1390219679&ids=74
```

于是直接用curl发送Post请求，而Parallel来进行并行处理（代替for）：

```
sudo apt-get install parallel curl

parallel curl --url "http://www.example.com/toupiao/Save" -d ids=74 -d :::: $数据文件名
```

数据文件内容示例：

```
name=李峙锦&phone=13602198215
name=于晨津&phone=16202106815
```

## 用到的其他工具

- [生成电话号码](http://pan.baidu.com/s/1qWHQVec)

- [生成人名-吉吉写作](http://pan.baidu.com/s/1ntMGITj)
