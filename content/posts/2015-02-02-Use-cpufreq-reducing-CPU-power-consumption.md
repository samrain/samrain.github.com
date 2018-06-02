---
layout : post
category : study
tags : [cpufreq, 降低CPU功耗, 降低功耗]
title : 使用cpufreq降低CPU功耗
date : 2015-02-02
---


##安装

```
sudo apt-get install cpufrequtils
```

##查看当前CPU状态

```
cpufreq-info
```

## 设置参数

```
-d  minimum frequency,
-u  maximum frequency,
-f  specific frequency (userspace governor must be set first) and
-g  governor （ondemand conservative userspace powersave powersave）
-c  specific CPU.
```

##设置为ondemand

```
sudo cpufreq-set -g conservative
```

##如果想手动修改请安装插件

```
sudo apt-get install indicator-cpufreq
```
