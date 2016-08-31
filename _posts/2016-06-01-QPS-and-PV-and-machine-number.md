---
layout : post
category : work
tags : [QPS, PV]
title : QPS、PV和需要部署机器数量计算公式
---
QPS = 请求数/秒

每天80%的访问集中在20%峰值时间

( 总PV数 \* 80% ) / ( 每天秒数 \* 20% ) = 峰值时间每秒请求数(QPS)

峰值时间每秒请求数(QPS) / 单台机器QPS   = 需要的机器
