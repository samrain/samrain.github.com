+++
title = "一维和二维表格互相转换"
date = 2022-02-13T11:23:28+08:00
tags = ["表格,统计,分析"]
categories = ["work"]
draft = false
+++

# 一维转二维
使用数据透视图即可，按照需求选择行和列。

特别需要注意的是，「值」的*计数项*中要设置为**求和**，且「值」的数据必须是数字，不能是中文或者英文。

# 二维转一维
还是使用数据透视图，但是在第一步的时候选择**使用多重合并计算区域**，后面一直next，直到在新sheet中显示透视图。

最精彩的一步出来了：鼠标双击数据区域最右下角的那个格子（一般都是最后一行的最后一列），会跳到一个新sheet中，里面就是转好的一维表。